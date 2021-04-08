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
    let middle = UIScreen.main.bounds.size.width/2
    var marital_array = ["Single", "Married"]
    var rate_array = ["Salary", "Hourly"]
    @State var marital_status = 0
    @State var pay_rate = 0
    @State var pay_frequency = "Bi-Weekly"
    var body: some View {
    VStack{
        HStack{
            Image(abrev).resizable().frame(width: 75, height: 75, alignment: .top).padding(.bottom, 25.0)
            Text(selected_state).font(.title3).fontWeight(.bold)
            Image(abrev).resizable().frame(width: 75, height: 75, alignment: .top).padding(.bottom, 25.0)
        }
        
        Text("Let's gather some information to make our estimation. Don't worry, we don't store any of your data.")
        HStack{
            Picker(selection: $marital_status, label: Text("Marital Status")) {
                ForEach(0 ..< marital_array.count){
                    Text(self.marital_array[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()).frame(width: 150, height: 50, alignment: .center)
            Picker(selection: $pay_rate, label: Text("Marital Status")) {
                ForEach(0 ..< rate_array.count){
                    Text(self.rate_array[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()).frame(width: 150, height: 50, alignment: .center)
        }
        
        Picker(selection: $pay_frequency, label: Text("Pay Frequency"), content: {
                        Text("Weekly").tag(1)
                        Text("Bi-Weekly").tag(2)
                        Text("Semi-Monthly").tag(3)
                        Text("Monthly").tag(4)
                        Text("Annually").tag(5)
        }).scaleEffect(0.95).frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
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


