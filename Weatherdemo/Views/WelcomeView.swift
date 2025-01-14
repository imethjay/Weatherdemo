//
//  WelcomeView.swift
//  Weatherdemo
//
//  Created by Inuka Dulnim Imeth Jayarathne on 2024-05-14.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to tget the weather app in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestedLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
