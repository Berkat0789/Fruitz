//
//  OnboardingView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI
import Foundation

struct OnboardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        //MARK: Body
        TabView {
            ForEach(fruits[0...5]){ view in
                FruitCardView(fruit: view)
            }
        }//Tab View
//        .tabViewStyle(.page)
        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
