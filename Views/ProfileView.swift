//
//  ProfileView.swift
//  PublicSpeakingPlayer
//
//  Created by ENZO CRISTIAN on 16/11/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.pink)

            Text("User Profile")
                .font(.title2)
                .foregroundColor(.white)

            Text("Profile settings will be added soon...")
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}
