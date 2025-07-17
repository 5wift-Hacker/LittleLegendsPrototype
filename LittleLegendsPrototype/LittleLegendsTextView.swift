//
//  LittleLegendsTextView.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 16/7/2025.
//

import SwiftUI

struct LittleLegendsTextView: View {
    var body: some View {
        Spacer()
        VStack {
            Text("LITTLE LEGENDS")
                .font(.title2)
                .foregroundStyle(.yellow)
                .bold()
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    LittleLegendsTextView()
}
