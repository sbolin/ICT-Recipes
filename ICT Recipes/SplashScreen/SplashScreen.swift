//
//  SplashScreen.swift
//  TextFieldCalcs
//
//  Created by Scott Bolin on 7-Dec-21.
//

import SwiftUI

struct SplashScreen<Content: View, Title: View, Logo: View>: View {

    var content: Content
    var titleView: Title
    var logoView: Logo

    var imageSize: CGSize

    init(imageSize: CGSize, @ViewBuilder content: @escaping () -> Content, @ViewBuilder titleView: @escaping () -> Title, @ViewBuilder logoView: @escaping () -> Logo) {
        self.content = content()
        self.titleView = titleView()
        self.logoView = logoView()
        self.imageSize = imageSize
    }

    @State var textAnimation = false
    @State var imageAnimation = false
    @State var endAnimation = false

    @Namespace var animation

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color.indigo
                    .edgesIgnoringSafeArea(.all)
                titleView
                    .offset(y: textAnimation ? 0 : 150)
                    .scaleEffect(textAnimation ? 0.8 : 1.0)
                if !endAnimation {
                    logoView
                        .matchedGeometryEffect(id: "LOGO", in: animation)
                        .frame(width: imageSize.width, height: imageSize.height)
                }

                if endAnimation {
                    logoView
                        .matchedGeometryEffect(id: "LOGO", in: animation)
                        .frame(width: imageSize.width / 1.5, height: imageSize.height / 1.5)
                        .offset(y: 90)
                }

            } // ZStack
        }

        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation(.spring()) {
                    textAnimation.toggle()
                }
                withAnimation(Animation.interactiveSpring(response: 0.6, dampingFraction: 1, blendDuration: 1)) {
                    endAnimation.toggle()
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
