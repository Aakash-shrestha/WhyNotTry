//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Aakash Shrestha on 13/09/2025.
//

import SwiftUI

struct ContentView: View {
    var activities =  ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    @State private var selected = "Baseball" //mutable element
    @State private var id = 1
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    
    var body: some View{
        VStack{
            Text("Why Not Try...")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size:144))
                        .foregroundColor(colors.randomElement() ?? .blue)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }.transition(.slide)
                .id(id)
            
            Spacer()
            
            Button("Try Again"){
                withAnimation(.easeInOut(duration: 1)){
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
        }
        }
}

#Preview {
    ContentView()
}
