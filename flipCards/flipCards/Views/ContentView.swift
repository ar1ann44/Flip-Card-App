//
//  ContentView.swift
//  flipCards
//
//  Created by Ariana Osuna  on 06/11/26.
//

import SwiftUI

struct ContentView: View {

    // flashcard info
    let cards = [
        Flashcard(english: "Dog",   spanish: "Perro", color: .orange),
        Flashcard(english: "House", spanish: "Casa",  color: .blue),
        Flashcard(english: "Book",  spanish: "Libro", color: .purple),
        Flashcard(english: "Water", spanish: "Agua",  color: .teal)
    ]

    @State private var index = 0
    @State private var isFlipped = false

    var body: some View {
        VStack(spacing: 30) {

            Text("Card \(index + 1) of \(cards.count)")
                .font(.headline)

            FlashcardView(card: cards[index], isFlipped: isFlipped)
                .id(index)
                .transition(.slide)
                .onTapGesture {
                    withAnimation {                    
                        isFlipped.toggle()
                    }
                }

            HStack(spacing: 40) {
                Button("Previous") {
                    withAnimation {
                        isFlipped = false
                        index -= 1
                    }
                }
                .disabled(index == 0)

                Button("Next") {
                    withAnimation {
                        isFlipped = false
                        index += 1
                    }
                }
                .disabled(index == cards.count - 1)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
