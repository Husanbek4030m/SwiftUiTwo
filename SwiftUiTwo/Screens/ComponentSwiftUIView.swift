//
//  ComponentSwiftUIView.swift
//  SwiftUiTwo
//
//  Created by Karavella on 23/06/22.
//

import SwiftUI

struct ComponentSwiftUIView: View {
    @State var txtField = "Husan"
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
                    
                
            }
        }
    }
}

struct ComponentSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentSwiftUIView()
    }
}
