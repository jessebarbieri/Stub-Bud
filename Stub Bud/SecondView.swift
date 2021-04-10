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
    @State var hours_worked: Double = 0
    @State var overtime_hours: Double = 0
    var body: some View {
    VStack{
        HStack{
            Image(abrev).resizable().frame(width: 75, height: 75, alignment: .top).padding(.bottom, 25.0)
            Text(selected_state).font(.title3).fontWeight(.bold)
            Image(abrev).resizable().frame(width: 75, height: 75, alignment: .top).padding(.bottom, 25.0)
        }
        
        Text("Let's gather some information to make our estimation. Don't worry, we don't store any of your data.")
        
        
        Picker(selection: $pay_frequency, label: Text("Pay Frequency"), content: {
                        Text("Weekly").tag(1)
                        Text("Bi-Weekly").tag(2)
                        Text("Annually").tag(3)
        }).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.bottom, 50).scaleEffect(0.85)
        
        HStack{
            Picker(selection: $marital_status, label: Text("Marital Status")) {
                ForEach(0 ..< marital_array.count){
                    Text(self.marital_array[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()).frame(width: 150, height: 25, alignment: .center)
            Picker(selection: $pay_rate, label: Text("Marital Status")) {
                ForEach(0 ..< rate_array.count){
                    Text(self.rate_array[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()).frame(width: 150, height: 25, alignment: .center)
        }
        
        HStack{
            Text("Hourly Rate ")
            // https://github.com/youjinp/SwiftUIKit <-- Use this to import something that can allow easy input of this value
            
        }.disabled(pay_rate == 0)
        
        Text("It will be assumed that the overtime rate is 1.5x in our calculation.").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).frame(width: UIScreen.main.bounds.size.width-25, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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

