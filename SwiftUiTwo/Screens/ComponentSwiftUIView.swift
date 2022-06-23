//
//  ComponentSwiftUIView.swift
//  SwiftUiTwo
//
//  Created by Karavella on 23/06/22.
//

import SwiftUI

struct ComponentSwiftUIView: View {
    @State var txtField = "Husan"
    @State var isHas = true
    @State var dateToday = Date()
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -5, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
        return min...max
    }
    var body: some View {
        ScrollView {
            VStack {
                TextField("test", text: $txtField)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextEditor(text: $txtField)
                    .frame(height: 100, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    
                SecureField("Parol", text: $txtField)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Image("photo_w")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Button {
                    print("Bosildi")
                } label: {
                    Image(systemName: "globe")
                    Text("Click Me")
                }
                
                Link(destination: URL(string: "https://pdp.uz")!) {
                    Text("pdp.uz")
                }
                
                
                Toggle(isOn: $isHas) {
                    Text("Rozimisiz")
                }.padding()
                    
                DatePicker("Vaqtni tanlang",
                           selection: $dateToday,
                           in: dateRange, //...Date(), //Date()... ||
                           displayedComponents: .date)
                    .padding()
            }
        }
    }
}

struct ComponentSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentSwiftUIView()
    }
}


