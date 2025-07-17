//
//  EmotionItem.swift
//  LittleLegendsPrototype
//
//  Created by John Newman on 16/7/2025.
//

import Foundation
import SwiftUI

struct EmotionItem: Identifiable, Hashable {
    var id = UUID()
    var emotionName: String
    var emotionImage: String
    var isCorrect: Bool
}
