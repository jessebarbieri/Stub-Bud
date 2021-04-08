//
//  SecondView.swift
//  Stub Bud
//
//  Created by Jesse Barbieri on 4/6/21.
//

import SwiftUI

struct SecondView: View {
    @Binding var selected_state: String
    var body: some View {
        HStack{
            Text(selected_state)
        }
        
    }
}


struct SecondView_Previews: PreviewProvider {
   @State static var selected_state = "New Jersey"
    
    static var previews: some View {
        SecondView(selected_state: $selected_state)
    }
}


