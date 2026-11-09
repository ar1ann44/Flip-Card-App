//
//  FlashcardView.swift
//  flipCards
//
//  Created by Ariana Osuna  on 08/11/26.
//

import SwiftUI

struct FlashcardView: View {

    let card: Flashcard
    let isFlipped: Bool

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(card.color)

            // front
            Text(card.english)
                .opacity(isFlipped ? 0 : 1)

            // back, the mirror thing
            Text(card.spanish)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 1 : 0)
        }
        .font(.largeTitle)
        .bold()
        .foregroundStyle(.white)
        .frame(width: 260, height: 320)
        .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
        .animation(.easeInOut(duration: 0.5), value: isFlipped)  
    }
}

#Preview {
    FlashcardView(
        card: Flashcard(english: "Dog", spanish: "Perro", color: .orange),
        isFlipped: false
    )
}
