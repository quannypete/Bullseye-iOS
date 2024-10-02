//
//  ContentView.swift
//  Bulleseye
//
//  Created by Quanny Hampton on 9/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisable = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                
                Text("1")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Button("Hit me") {
                alertIsVisable = true
            }
            .alert("Hello there", 
                   isPresented: $alertIsVisable,
                   actions: {
                Button("Awesome") {
                    print("Alert closed")
                }
            }, message: {
                let roundedValue = Int(sliderValue.rounded())
                Text("""
The slider's value is \(roundedValue).
You scored \(game.point(slidervalue: roundedValue)) points this round.
""")
            }
                   )
        }
    }
}

struct Content_Preview: PreviewProvider{
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}


