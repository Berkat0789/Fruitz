//
//  StartButtonView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        //MARK: View
        Button {
           isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                   
            }//HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 2)
            )
        }//Button
        .accentColor(.white)


    }
}

//MARK: Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
