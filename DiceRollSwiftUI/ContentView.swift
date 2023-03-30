//
//  ContentView.swift
//  DiceRollSwiftUI
//
//  Created by Wynelher Tagayuna on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    // @State enables read and write of a value
    @State var leftDiceNumber: Int = 1
    @State var righDiceNumber: Int = 2
    
    var body: some View {
        ZStack{// Stack subviews in the z-axis
            Image("background")// Background image
                .resizable()// Enable resizing
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceNumberView(diceNumber: leftDiceNumber)// Get dice image
                    DiceNumberView(diceNumber: righDiceNumber)// Get dice image
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {// Assign random number from 1 to 6 for each button press
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.righDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color("DiceColor")).padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
