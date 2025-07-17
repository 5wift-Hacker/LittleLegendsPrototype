

import SwiftUI

struct EmotionButton: View {
    
    let emotionItem: EmotionItem
    
    var body: some View {
        
            //image of emotion
            HStack() {
                Spacer()
                Image(emotionItem.emotionImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Spacer()
                //emotion name
                Text(emotionItem.emotionName)
                    .foregroundStyle(.black)
                    .bold()
                    .font(.largeTitle)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .background(Color.angerbuttoncolor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 3)
            .padding(.horizontal,10)
    }
}

#Preview {
    EmotionButton(emotionItem: EmotionItem(emotionName: "Lonely", emotionImage: "lonely", isCorrect: true))
}
