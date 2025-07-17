//
//  SuccessPage.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 16/7/2025.
//

import SwiftUI

struct ResultPage: View {
    
    @Environment(\.dismiss) var dismiss
    
    let emotionItem: EmotionItem
    
    var body: some View {
        
        
        //        VStack (spacing: 0){
        //
        if emotionItem.isCorrect {
            //            Text("You Win!")
            Spacer()
            Image("greentick")
                .resizable()
                .scaledToFit()
            
            NavigationLink(destination: Page1()) {
                Text("Next")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: 200, height: 50)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(8)
                    .background(.angerbuttonoutlinecolor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
            Spacer()
            
        }else {
            //            Text("You Lose!")
            Spacer()
            Image("redxmark")
                .resizable()
                .scaledToFit()
            
            Button {
                dismiss()
                
            } label: {
                Text("Try Again")
                    .font(.largeTitle)
                    .frame(width: 200, height: 50)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(8)
                    .background(.angerbuttonoutlinecolor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
            Spacer()
        }
    }
}




#Preview {
    NavigationStack {
        ResultPage(emotionItem: EmotionItem(emotionName: "Ashamed", emotionImage: "ashamed", isCorrect: true))
    }
}
