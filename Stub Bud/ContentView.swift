//
//  ContentView.swift
//  Stub Bud
//
//  Created by Jesse Barbieri on 4/6/21.
//

import SwiftUI

var state_dict = ["Alabama":"AL", "Alaska":"AK", "Arizona": "AZ", "Arkansas": "AR","California": "CA","Colorado": "CO", "Connecticut": "CT", "Delaware": "DE", "Florida": "FL", "Georgia": "GA", "Hawaii": "HI", "Idaho": "ID", "Illinois": "IL", "Indiana": "IN", "Iowa": "IA", "Kansas": "KS", "Kentucky": "KY", "Louisiana": "LA", "Maine": "ME" , "Maryland": "MD", "Massachusetts": "MA", "Michigan": "MI", "Minnesota": "MN", "Mississippi": "MS", "Missouri": "MO", "Montana": "MT", "Nebraska": "NE", "Nevada": "NV","New Jersey": "NJ","New Mexico": "NM", "New York": "NY", "North Carolina": "NC", "North Dakota": "ND", "Ohio": "OH", "Oklahoma": "OK", "Oregon": "OR", "Pennsylvania": "PA", "Rhode Island": "RI", "South Carolina": "SC", "South Dakota": "SD", "Tennessee": "TN", "Texas": "TX", "Utah": "UT", "Vermont": "VT", "Virginia": "VA", "Washington": "WA", "West Virginia": "WV", "Wisconsin": "WI", "Wyoming": "WY"]

let middle = UIScreen.main.bounds.size.width/2


/*
 The purpose of this method is to set our original stage, allow the user to select their state needed for the later calculations.
 */
struct ContentView: View {
    @State private var selected_state = "New Jersey"
    let abrev = "NJ"
    @State var isModal: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Select Your State").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(.black)).padding(.bottom, 25.0)
                Picker("State", selection: $selected_state){
                    ForEach(state_dict.keys.sorted(), id:\.self){
                        Text($0)
                            .foregroundColor(Color(.black))
                            .fontWeight(.bold)
                    }
                }.padding(.bottom, 25.0)
                Image(getState(state: selected_state)).resizable().frame(width: 225, height: 225, alignment: .center).padding(.bottom, 25.0)
                NavigationLink(
                    destination: SecondView(selected_state: self.$selected_state, abrev: getState(state: selected_state))){
                    Text("Next").foregroundColor(.black).font(.title2).padding(.top, 50.0).padding(.bottom, 100.0)
                }
                
            }
        }
        .padding(.top, -15.0)
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func getState(state: String) -> String {
    var stateImage = ""
    
    if(state_dict.keys.contains(state)){
        stateImage = state_dict[state]!
    }
    
    return stateImage
}


/*
 .position(x: middle, y:UIScreen.main.bounds.size.height/8)
 .position(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height-275)
 .position(x: middle, y: UIScreen.main.bounds.size.height/2.75)
 .position(x: middle, y: UIScreen.main.bounds.size.height-125).foregroundColor(.black).font(.title2)
 */
