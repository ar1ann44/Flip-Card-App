//
//  Flashcard.swift
//  flipCards
//
//  Created by Ariana Osuna  on 08/11/26.
//

import SwiftUI

struct Flashcard: Identifiable {
    let id = UUID()
    let english: String
    let spanish: String
    let color: Color
}
