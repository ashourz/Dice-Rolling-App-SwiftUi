//
//  ContentView.swift
//  dicee_swiftui
//
//  Created by Zak Ashour on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 2
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack(){
                    Spacer()
                    DiceView(n: leftDiceNum)
                    Spacer()
                    DiceView(n: rightDiceNum)
                    Spacer()
                }.padding()
                Spacer()
                Button(action: {rollDice()}, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                }).background(Color.red)
            }
            .padding()
        }
    }
    func rollDice(){
        self.leftDiceNum = Int.random(in: 1...6)
        self.rightDiceNum = Int.random(in: 1...6)

    }
}



#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
