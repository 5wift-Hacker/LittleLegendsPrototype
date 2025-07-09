//
//  ContentView.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 9/7/2025.
//

import SwiftUI

struct ContentView: View {
    
    var correctAnswer: String = "Happiness"
    
    //if is correct, have right image, else have wrong image
    @State var isCorrect: Bool = true
    
    @State var isVisible: Bool = false
    
    let rightImage: String = "checkmark"
    let wrongImage: String = "xmark"
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading) {
                Image("john")
                    .resizable()
                    .scaledToFit()
                    .border(Color.white, width: 10)
                    .foregroundStyle(.tint)
                Text("John's Story! Pt. 1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding(.bottom)
                Text("Once upon a time, John drove up a mountain to see an incredible sunset.")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(.bottom)
                Text("This is the start of his journey though!")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(.bottom)
                Text("What do you think John is feeling right now?")
                    .font(.title3)
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding()
            
            VStack {
                Spacer()
                HStack {
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                            Text("Happiness ☺️")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(isCorrect ? Color.green : Color.red, lineWidth: 3)
                            .frame(width: 50, height: 50)
                        Image(systemName: isCorrect ? rightImage : wrongImage)
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                    }
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                            Text("Sadness 🥺")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(isCorrect ? Color.green : Color.red, lineWidth: 3)
                            .frame(width: 50, height: 50)
                        Image(systemName: isCorrect ? rightImage : wrongImage)
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                    }
                }
                HStack {
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                            Text("Anger 😡")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(isCorrect ? Color.green : Color.red, lineWidth: 3)
                            .frame(width: 50, height: 50)
                        Image(systemName: isCorrect ? rightImage : wrongImage)
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                    }
                }
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                        HStack {
                            Text("Next")
                                .foregroundStyle(.white)
                                .font(.headline)
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.white)
                                .imageScale(.large)
                        }
                    }
                }

            }
            
            .padding()
        }
    }
    
    //func check if correct answer
    
    func checkAnswer() {
        
    }
}

#Preview {
    ContentView()
}
