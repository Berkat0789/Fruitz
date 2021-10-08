//
//  FruitNutritionView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/8/21.
//

import SwiftUI

struct FruitNutritionView: View {
    
    var friut: Fruit
    let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition Value per 100g") {
                ForEach(0..<friut.nutrition.count, id: \.self) { value in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[value])
                        }
                        .foregroundColor(friut.gradientColors[1])
                        .font(.body)
                        Spacer(minLength: 25)
                        Text(friut.nutrition[value])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(friut: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 350, height: 470))
            .padding()
    }
}
