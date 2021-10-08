//
//  HeaderView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/7/21.
//

import SwiftUI

struct HeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 0.2, x: 1, y: 2)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fruit: fruitsData[5])
            .previewLayout(.fixed(width: 350, height: 400))
    }
}
