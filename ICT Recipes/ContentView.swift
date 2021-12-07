//
//  ContentView.swift
//  ICT Recipes
//
//  Created by Scott Bolin on 8-Dec-21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedSegment = BaseType.milk
    @State private var showSplash = false // should be true

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.pink.opacity(0.2))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.red)], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.pink.opacity(0.6))], for: .normal)
    }

    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Recipe Converter")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)

                    Picker(selection: $selectedSegment, label: Text("Base Type")) {
                        ForEach(BaseType.allCases, id: \.self) { base in
                            Text(base.displayBaseType()).tag(base)
                        }
                    }
                    .pickerStyle(.segmented)

                    HStack {
                        Text("\(selectedSegment.displayBaseType())").font(.title2)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)

                    switch selectedSegment {
                    case .milk:
                        MilkView()
                    case .yogurt:
                        YogurtView()
                    case .sorbet:
                        SorbetView()
                    }
                }
                .padding(.horizontal)
            } // ScrollView
            InitialView()
                .opacity(showSplash ? 1 : 0)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        InitialView.shouldAnimate = false
                        withAnimation {
                            self.showSplash = false
                        }
                    }
                }
        } // ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
