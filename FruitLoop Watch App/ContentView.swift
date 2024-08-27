//
//  ContentView.swift
//  FruitLoop Watch App
//
//  Created by Asheley Mudzingwa on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    
//    Array with the fruits we want to iterate over
    @State var fruits = ["🍎 Apple", "🍒 Cherries", "🍓 Strawberry", "🥭 Mango"]
    
    
    var body: some View {
        VStack{
                    Text(fruits[0])
                        .font(.system(size: 20))
                    Spacer()
                    Button("Random"){
                        fruits.shuffle()
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Text("Rotate the digital crown to change text size")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                .padding()
                .onAppear{
                    fruits.shuffle()
                }
    }
}

#Preview {
    ContentView()
}
