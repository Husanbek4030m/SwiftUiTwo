//
//  MapSwiftUIView.swift
//  SwiftUiTwo
//
//  Created by Karavella on 23/06/22.
//

import SwiftUI
import MapKit

struct MarkerItem : Identifiable {
    let id = UUID()
    let cordinates: CLLocationCoordinate2D
}

struct MapSwiftUIView: View {
    
    @State var region = MKCoordinateRegion(center: .init(latitude: 41.332433, longitude: 69.291656), latitudinalMeters: 300, longitudinalMeters: 300)
    @State var mark = MarkerItem(cordinates: .init(latitude: 41.332433, longitude: 69.291656))
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            showsUserLocation: true,
            userTrackingMode: nil,
            annotationItems: [mark]
        ) { item in
            MapMarker(coordinate: item.cordinates)
            
        }
    }
}

struct MapSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapSwiftUIView()
    }
}
