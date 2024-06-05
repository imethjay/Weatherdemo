//
//  LoadingView.swift
//  Weatherdemo
//
//  Created by Inuka Dulnim Imeth Jayarathne on 2024-05-14.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
