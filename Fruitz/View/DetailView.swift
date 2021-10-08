//
//  DetailView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/7/21.
//

import SwiftUI

struct DetailView: View {
    
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HeaderView(fruit: fruit)
                    //Header
                    VStack(alignment: .leading, spacing: 20){
                        //Details
                        Text(fruit.title)
                            .font(.largeTitle)
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.heavy)
                        //Nutrition
                        FruitNutritionView(friut: fruit)

                        //Description
                        Text(fruit.description)
                        //Link
                        SourceLinkView()
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                    } //Vstack
                    .padding(.horizontal, 10)
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                } //End Vstack
            }//Scroll
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: fruitsData[0])
    }
}
