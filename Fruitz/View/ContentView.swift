//
//  ContentView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings = false
    private let fruits = fruitsData
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                NavigationLink(destination: DetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                }
            }//LIst
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })//Button
                                    .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
