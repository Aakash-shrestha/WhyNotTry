//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Aakash Shrestha on 13/09/2025.
//

import SwiftUI

struct ContentView: View {
    var activities =  ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    @State var selected = "Baseball" //mutable element
    
    var body: some View{
        VStack{
            Text("Why Not Try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size:144))
                        .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            
            Button("Try Again"){
                selected = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
        }
        }
}

#Preview {
    ContentView()
}
