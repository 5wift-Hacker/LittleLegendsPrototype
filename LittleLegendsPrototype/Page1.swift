//
//  ContentView.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 9/7/2025.
//

import SwiftUI

struct Page1: View {
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                Color.angermaincolor.ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 50) {
                    VStack {
                        Image("angercloseup")
                            .resizable()
                            .scaledToFit()
                        Text("Ash is feeling angry.")
                            .font(.largeTitle)
                            .padding(.bottom)
                        Text("What else is he feeling in this moment?")
                            .font(.title2)
                            .bold()
                    }
                    .foregroundStyle(.white)
                    
                    
                    VStack {
                        NavigationLink(destination: Page2()) {
                            Text("Next")
                                .font(.largeTitle)
                                .frame(width: 200, height: 50)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .padding(8)
                                .background(.angerbuttonoutlinecolor)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    
                    LittleLegendsTextView()
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        Page1()
    }
}
