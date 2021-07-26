//
//  ContentView.swift
//  first_test
//
//  Created by Jun Ishikawa on 2021/07/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            HStack {
                ImageView()
                TextView()
                    .padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello")
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                Text("jun")
                    .font(.subheadline)
                    .foregroundColor(Color.pink)
                Spacer()
                Text("ishi")
                    .foregroundColor(Color.orange)
            }
        }
        .padding()
    }
}
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}


struct ImageView: View {
    var body: some View {
        Image("character_saboten")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.6937, longitude: 139.4809),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
