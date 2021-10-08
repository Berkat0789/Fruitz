//
//  SettingsLabelView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/8/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var imageString: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageString)
        }
        .padding(.horizontal, 10)
    }
}
    
    struct SettingsLabelView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsLabelView(labelText: "Fruits", imageString: "info.circle")
                .previewLayout(.sizeThatFits)
        }
    }
