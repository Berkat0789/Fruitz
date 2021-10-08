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
                        //Description
                        Text(fruit.description)
                        //Nutrition
                        //Link
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
