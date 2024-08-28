# FruitLoop Watch App

This is a simple SwiftUI watchOS app called "FruitLoop" that displays a rotating fruit list. Users can change the font size of the fruit names by rotating the digital crown on their Apple Watch. The app starts with a shuffled list of fruits and allows users to randomize the list by pressing a button.

## Features

- Displays a list of fruits with adjustable text size.
- Allows users to shuffle the fruit list with a button.
- Users can rotate the digital crown to change the text size.
- The app initially shuffles the fruit list on launch.

## Code Overview

### ContentView.swift

```swift
//
//  ContentView.swift
//  FruitLoop Watch App
//
//  Created by Asheley Mudzingwa on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    
    // Array with the fruits we want to iterate over
    @State var fruits = ["🍎 Apple", "🍒 Cherries", "🍓 Strawberry", "🥭 Mango"]
    // Rotate function on WatchOS
    @State var scrollAmount = 14.0
    
    var body: some View {
        VStack{
            Text(fruits[0]).font(.system(size: scrollAmount))
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
        .focusable()
        .digitalCrownRotation($scrollAmount, from: 10, through: 20, by:1, isContinuous: false)
        .onAppear{
            fruits.shuffle()
        }
    }
}

#Preview {
    ContentView()
}
