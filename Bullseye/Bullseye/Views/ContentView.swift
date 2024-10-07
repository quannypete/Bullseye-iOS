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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                InstructionView(game: $game)
                HStack {
                    
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                Button("Hit me".uppercased()) {
                    alertIsVisable = true
                }.padding(20.0)
                    .background(
                        ZStack {
                            Color("ButtonColor")
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        }
                    )
                    .foregroundColor(.white)
                    .cornerRadius(21.0)
                    .bold()
                    .font(.title3)
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
}

struct InstructionView: View {
    @Binding var game: Game
    var body: some View {
        VStack{
            InstructionText(text: "🎯🎯🎯\n Put the Bullseye as close as you can to")
                .padding(.horizontal, 30)
            BigNumberText(text: String(game.target))
        }
    }
}

struct Content_Preview: PreviewProvider{
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone 15 Pro Max")
    }
}


