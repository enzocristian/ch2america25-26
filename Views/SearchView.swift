//
//  SearchView.swift
//  PublicSpeakingPlayer
//
//  Created by ENZO CRISTIAN on 16/11/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Search")
                .font(.largeTitle)
                .foregroundColor(.white)

            Text("Search settings will be added soon...")
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}
