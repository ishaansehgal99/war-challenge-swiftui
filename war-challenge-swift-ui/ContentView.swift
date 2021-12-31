//
//  ContentView.swift
//  war-challenge-swift-ui
//
//  Created by Ishaan Sehgal on 12/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard:String = "back"
    @State private var cpuCard:String = "back"
    @State private var playerScore:Int = 0
    @State private var cpuScore:Int = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    let playerCardNum:Int = Int.random(in: 2...14)
                    let cpuCardNum:Int = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerCardNum)
                    cpuCard = "card" + String(cpuCardNum)
                    
                    if playerCardNum > cpuCardNum {
                        playerScore += 1
                    }
                    else if cpuCardNum > playerCardNum {
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(Font.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(Font.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
