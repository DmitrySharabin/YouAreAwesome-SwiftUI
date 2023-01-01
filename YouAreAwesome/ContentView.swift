//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Dmitry Sharabin on 1.1.23..
//

import SwiftUI

struct ContentView: View {
//    @State private var messageString = "When the Genius Bar needs help, they call you!"
    @State private var messageString = ""
    
    var body: some View {
        ZStack {
//            Rectangle()
//                .fill(.yellow.gradient)
//                .ignoresSafeArea()
            
            GeometryReader { geometry in
                VStack {
    //                Text("You Have Skills!")
    //                    .font(.largeTitle)
    //                    .fontWeight(.black)
    //                    .foregroundColor(Color("Gold-BC"))
    //                    .padding()
    //                    .background(Color("Marron-BC"))
    //    //                .cornerRadius(0) // Fix for the background bleeding to the safe area.
    //                    .cornerRadius(15)
                    
//                    Group {
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                    }
//                    .font(.title)
//                    .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.red)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
        //                .border(.orange, width: 1)
                        .padding()
                    
                    Spacer()
                    
//                    Divider()
//                        .background(.black)
//                        .padding()
//                        .frame(width: 150.0)
//
//                    Rectangle()
//                        .fill(.indigo)
////                        .frame(width: 175, height: 1)
//                        .frame(width: geometry.size.width * (2 / 3), height: 1)
                    
                    HStack {
                        Button("Awesome") {
                            messageString = "You Are Awesome!"
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                        
                        Button("Great") {
                            messageString = "You Are Great!"
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
