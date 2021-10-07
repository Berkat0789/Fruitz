//
//  FruitRowView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI
import Foundation

struct FruitRowView: View {
    
    var fruit: Fruit
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color.black, radius: 3, x: 5, y: 6)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(5)
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .multilineTextAlignment(.leading)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
            Spacer()
            
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
