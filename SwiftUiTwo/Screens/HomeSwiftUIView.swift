//
//  HomeSwiftUIView.swift
//  SwiftUiTwo
//
//  Created by Karavella on 22/06/22.
//

import SwiftUI
struct HomeSwiftUIView: View {
    
    
    
    var body: some View {
        NavigationView {
            Text("Mannonov Husan")
                .foregroundColor(.blue)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Bosh sahifa")
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink {
                                MapSwiftUIView()
                            } label: {
                                Image(systemName: "map")
                            }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: "bell")
                        }
                    }
                }
        }
       
    }
}

struct HomeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSwiftUIView()
    }
}
