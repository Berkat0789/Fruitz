//
//  OnboardingView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: Properties
    var body: some View {
        //MARK: Body
        TabView {
            ForEach(0..<5){ view in
                FruitCardView()
            }
        }//Tab View
        .tabViewStyle(.page)
        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}