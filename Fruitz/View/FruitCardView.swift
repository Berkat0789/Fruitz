//
//  FruitCardView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        //MARK: Body
        ZStack {
            VStack(spacing: 20){
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300, alignment: Alignment.center)
                    .shadow(color: .black, radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black, radius: 2, x: 6, y: 4)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
                    .frame(maxWidth: 480)
                StartButtonView()
            }//Vstack
        }//zstack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0 , maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint:.top , endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}


//MARK: Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
