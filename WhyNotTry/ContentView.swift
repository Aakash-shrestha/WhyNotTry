//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Aakash Shrestha on 13/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        Circle()
            .fill(.blue)
            .padding()
            .overlay(
                Image(systemName: "figure.archery")
                .font(.system(size:144))
                .foregroundColor(.white)
            )
    }
}

#Preview {
    ContentView()
}
