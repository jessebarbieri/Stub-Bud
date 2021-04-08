//
//  SecondView.swift
//  Stub Bud
//
//  Created by Jesse Barbieri on 4/6/21.
//

import SwiftUI

struct SecondView: View {
    @Binding var selected_state: String
    let abrev: String
    var body: some View {
        HStack{
            Image(abrev).resizable().frame(width: 100, height: 100, alignment: .center).padding(.bottom, 25.0)
            Text(selected_state)
        }
        
    }
}


struct SecondView_Previews: PreviewProvider {
    @State static var selected_state = "New Jersey"
    let abrev: String
    static var previews: some View {
        SecondView(selected_state: $selected_state, abrev: "NJ")
    }
}


