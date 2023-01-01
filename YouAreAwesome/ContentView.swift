//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Dmitry Sharabin on 1.1.23..
//

import SwiftUI

struct ContentView: View {
//    @State private var messageString = "When the Genius Bar needs help, they call you!"
    @State private var messageString = "Namaste"
    
    var body: some View {
        VStack {
            Spacer()
            
//            Image(systemName: "figure.mind.and.body")
//                .resizable()
//                .scaledToFit()
////                .scaledToFill()
//                .foregroundColor(.pink)
////                .border(.red)
////                .frame(width: 200, height: 300)
////                .clipped()
////                .border(.blue)
            
//            Image(systemName: "cloud.sun.rain.fill")
//                .resizable()
//                .scaledToFit()
////                .symbolRenderingMode(.hierarchical)
////                .foregroundColor(.orange)
////                .symbolRenderingMode(.palette)
////                .foregroundStyle(.gray, .orange, .blue)
//                .symbolRenderingMode(.multicolor)
//                .padding()
//                .background(Color(hue: 0.558, saturation: 0.227, brightness: 1.0))
//                .cornerRadius(30)
////                .clipShape(Circle())
//                .shadow(color: .gray, radius: 30, x: 20, y: 20)
////                .border(.red, width: 5)
////                .cornerRadius(30)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 30)
//                        .stroke(.teal, lineWidth: 1)
//                )
//                .padding()
            
            Image(systemName: "speaker.wave.3", variableValue: 0.6)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.558, saturation: 0.227, brightness: 1.0))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
