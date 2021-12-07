//
//  InitialView.swift
//  TextFieldCalcs
//
//  Created by Scott Bolin on 7-Dec-21.
//

import SwiftUI

struct InitialView: View {
    static var shouldAnimate = true
    var body: some View {
        SplashScreen(imageSize: CGSize(width: 328, height: 203)) {

        } titleView: {
            Text("Ice Cream Time Recipes")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        } logoView: {
            Image("Oval Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
