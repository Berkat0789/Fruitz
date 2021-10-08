//
//  SettingsView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/8/21.
//

import SwiftUI

struct SettingsView: View {
    
    
    
    @Environment(\.presentationMode) var presentaitonMode
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //Seciton 1
                    GroupBox(label:
                    
                    SettingsLabelView(labelText: "fruitose", imageString: "info.circle")
                    
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100, alignment: .center)
                                .cornerRadius(10)
                            Text("Fruits are bomb, we offer a verioty of friots that wull get you all yo uneed in terms of nutrients. Feel free ot drop by anytime you like")
                                .font(.footnote)
                        }
                    }
                    //Section 2
                    
                    //Section 3
                    
                }//Vstack
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentaitonMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                                    
                )
                .navigationTitle("Settings")
            }
        }//Navigaiton
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
