//
//  ContentView.swift
//  interactive UI practice3
//SImple interactive UI
//  Created by scholar on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var presentAlert = false
    @State private var color = ""
    @State private var food = ""
    @State private var titleText = "what should you do today?"
    var body: some View {
        VStack {
            
            Text(titleText)
                .font(.title)
            
            TextField("what's your favorite color?", text: $color)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            TextField("What's your favorite food?", text: $food)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("submit your answers") {
                presentAlert = true
                titleText = "Put on your favorite \(color) shirt and eat \(food)!"
            }

        }
        
        .alert("You're gonna have a great day", isPresented: $presentAlert, actions:{})
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
