//
//  ContentView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    
    private let fruits = fruitsData
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                FruitRowView(fruit: fruit)
                
            }//LIst
            .navigationTitle("Fruits")
        }// NAvigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
