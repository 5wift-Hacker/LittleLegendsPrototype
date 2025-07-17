//
//  Page2.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 16/7/2025.
//

import SwiftUI

struct Page2: View {
    
    let emotionOptions = [
        EmotionItem(emotionName: "Ashamed", emotionImage: "ashamed", isCorrect: true),
        EmotionItem(emotionName: "Scared", emotionImage: "scared", isCorrect: false),
        EmotionItem(emotionName: "Lonely", emotionImage: "lonely", isCorrect: false),
    ]
    
    var body: some View {
        
            ZStack {
                Color.angermaincolor.ignoresSafeArea()
                VStack(spacing: 20) {
                    Spacer()
                    ForEach(emotionOptions) { emotionItem in
                        NavigationLink(value: emotionItem) {
                            EmotionButton(emotionItem: emotionItem)
                        }
                    }
                    LittleLegendsTextView()
                }
            }
            .navigationDestination(for: EmotionItem.self, destination: { choice in
                ResultPage(emotionItem: choice)
                    .navigationBarBackButtonHidden(false)
            })
        }
    }


#Preview {
    NavigationStack {
        Page2()
    }
}
