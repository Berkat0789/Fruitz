//
//  SourceLinkView.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/8/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://Wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
