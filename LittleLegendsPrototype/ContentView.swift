//
//  ContentView.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 9/7/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var correctAnswerChosen: Bool = false
    @State var wrongAnswerChosen: Bool = false
    
    @State var isVisible: Bool = false
    
    @State var isCorrect: Bool = false
    
    let tickOrX: String = ""
    
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
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isVisible = true
                        }
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isCorrect = true
                        }
                        correctAnswerChosen = true
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.yellow)
                                .frame(height: 60)
                                .frame(maxWidth: .infinity)
                            Text("Excitement ☺️")
                                .foregroundStyle(.black)
                                .font(.headline)
                        }
                    }
                    
                    if isVisible {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.green, lineWidth: 3)
                                .frame(width: 50, height: 50)
                            Image(systemName: "checkmark")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                        }
                    }
                }
                
                HStack {
                    Button {
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isVisible = true
                        }
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isCorrect = false
                        }
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.indigo)
                                .frame(height: 60)
                                .frame(maxWidth: .infinity)
                            Text("Sadness 🥺")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    .disabled(!isCorrect == false)
                    
                    if isVisible {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.red, lineWidth: 3)
                                .frame(width: 50, height: 50)
                            Image(systemName: "xmark")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                        }
                    }
                }
                HStack {
                    Button {
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isVisible = true
                        }
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isCorrect = false
                        }
                    } label: {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.red)
                                .frame(height: 60)
                                .frame(maxWidth: .infinity)
                            Text("Anger 😡")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    .disabled(!isCorrect == false)
                    
                    if isVisible {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.red, lineWidth: 3)
                                .frame(width: 50, height: 50)
                            Image(systemName: "xmark")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                        }
                    }
                }
                
                HStack {
                    Button {
                        withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                            isVisible = false
                        }
                        withAnimation {
                            isCorrect = false
                        }
                    } label: {
                        
                        if isCorrect {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(!isCorrect ? .gray : .black)
                                    .frame(height: 50)
                                    .frame(maxWidth: .infinity)
                                Text(isCorrect ? "🥳🥳🥳🥳🥳" : "Retry")
                                    .foregroundStyle(.white)
                                    .font(isCorrect ? .title : .headline)
                            }
                        }
                        
                    }
                    .disabled(isCorrect == true || correctAnswerChosen == true)
                    
                    Button {
                        
                    }
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.green)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                            HStack {
                                Text(!isCorrect ? "Choose an Emotion" : "Next")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                Image(systemName: !isCorrect ? "arrow.up" : "arrow.right")
                                    .foregroundStyle(.white)
                                    .imageScale(.large)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
