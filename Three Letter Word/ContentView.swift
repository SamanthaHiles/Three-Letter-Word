//
//  ContentView.swift
//  Three Letter Word
//
//  Created by Samantha Hiles on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var letter = ""
    @State private var counter = 0
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var body: some View {
        VStack {
            Text("Three Letter Word")
                .font(.title).bold()
                .padding()
            Text("Tap the grey box to change the letter")
            CustomLetterBox(color: .gray, text: letter)
        }
    }
}
struct CustomLetterBox: View {
    let color : Color
    let text : String
    var body: some View {
        ZStack{
            color
            Text(text)
                .font(.system(size: 90))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120)
    }
}

#Preview {
    ContentView()
}
