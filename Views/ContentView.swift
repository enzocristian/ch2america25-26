//
//  ContentView.swift
//  PublicSpeakingPlayer
//
//  Created by ENZO CRISTIAN on 16/11/25.
//

import SwiftUI
internal import Combine


struct ContentView: View {
    let tracks: [Track] = [
                // After Hours
                Track(title: "Alone Again", album: "After Hours", duration: 250, coverImageName: "afterHours"),
                Track(title: "Too Late", album: "After Hours", duration: 240, coverImageName: "afterHours"),
                Track(title: "Hardest To Love", album: "After Hours", duration: 311, coverImageName: "afterHours"),
                Track(title: "Scared To Live", album: "After Hours", duration: 191, coverImageName: "afterHours"),
                Track(title: "Snowchild", album: "After Hours", duration: 247, coverImageName: "afterHours"),
                Track(title: "Escape From LA", album: "After Hours", duration: 355, coverImageName: "afterHours"),
                Track(title: "Heartless", album: "After Hours", duration: 198, coverImageName: "afterHours"),
                Track(title: "Faith", album: "After Hours", duration: 282, coverImageName: "afterHours"),
                Track(title: "Blinding Lights", album: "After Hours", duration: 199, coverImageName: "afterHours"),
                Track(title: "In Your Eyes", album: "After Hours", duration: 237, coverImageName: "afterHours"),
                Track(title: "Save Your Tears", album: "After Hours", duration: 215, coverImageName: "afterHours"),
                Track(title: "Repeat After Me (Interlude)", album: "After Hours", duration: 205, coverImageName: "afterHours"),
                Track(title: "After Hours", album: "After Hours", duration: 360, coverImageName: "afterHours"),
                Track(title: "Until I Bleed Out", album: "After Hours", duration: 189, coverImageName: "afterHours"),

                // Dawn FM
                Track(title: "Take My Breath", album: "Dawn FM", duration: 338, coverImageName: "dawnFM"),
                Track(title: "Gasoline", album: "Dawn FM", duration: 211, coverImageName: "dawnFM"),
                Track(title: "How Do I Make You Love Me?", album: "Dawn FM", duration: 0, coverImageName: "dawnFM"),
                Track(title: "Sacrifice", album: "Dawn FM", duration: 224, coverImageName: "dawnFM"),
                Track(title: "Is There Someone Else?", album: "Dawn FM", duration: 199, coverImageName: "dawnFM"),
                Track(title: "Out of Time", album: "Dawn FM", duration: 224, coverImageName: "dawnFM"),
                Track(title: "Less Than Zero", album: "Dawn FM", duration: 211, coverImageName: "dawnFM"),
                Track(title: "Phantom Regret by Jim", album: "Dawn FM", duration: 179, coverImageName: "dawnFM"),
                Track(title: "Here We Go… Again", album: "Dawn FM", duration: 210, coverImageName: "dawnFM"),
                Track(title: "Best Friends", album: "Dawn FM", duration: 163, coverImageName: "dawnFM"),
                Track(title: "Starry Eyes", album: "Dawn FM", duration: 147, coverImageName: "dawnFM"),
                Track(title: "Every Angel is Terrifying", album: "Dawn FM", duration: 166, coverImageName: "dawnFM"),
                Track(title: "Don't Break My Heart", album: "Dawn FM", duration: 204, coverImageName: "dawnFM"),
                Track(title: "I Heard You're Married", album: "Dawn FM", duration: 264, coverImageName: "dawnFM"),

                // Hurry Up Tomorrow
                Track(title: "Wake Me Up", album: "Hurry Up Tomorrow", duration: 358, coverImageName: "hurryUpTomorrow"),
                Track(title: "Cry For Me", album: "Hurry Up Tomorrow", duration: 223, coverImageName: "hurryUpTomorrow"),
                Track(title: "I Can’t Fucking Sing", album: "Hurry Up Tomorrow", duration: 12, coverImageName: "hurryUpTomorrow"),
                Track(title: "São Paulo", album: "Hurry Up Tomorrow", duration: 351, coverImageName: "hurryUpTomorrow"),
                Track(title: "Until We’re Skin & Bones", album: "Hurry Up Tomorrow", duration: 22, coverImageName: "hurryUpTomorrow"),
                Track(title: "Baptized In Fear", album: "Hurry Up Tomorrow", duration: 231, coverImageName: "hurryUpTomorrow"),
                Track(title: "Open Hearts", album: "Hurry Up Tomorrow", duration: 234, coverImageName: "hurryUpTomorrow"),
                Track(title: "Opening Night", album: "Hurry Up Tomorrow", duration: 95, coverImageName: "hurryUpTomorrow"),
                Track(title: "Reflections Laughing", album: "Hurry Up Tomorrow", duration: 340, coverImageName: "hurryUpTomorrow"),
                Track(title: "Enjoy The Show", album: "Hurry Up Tomorrow", duration: 351, coverImageName: "hurryUpTomorrow"),
                Track(title: "Given Up On Me", album: "Hurry Up Tomorrow", duration: 356, coverImageName: "hurryUpTomorrow"),
                Track(title: "I Can’t Wait To Get There", album: "Hurry Up Tomorrow", duration: 188, coverImageName: "hurryUpTomorrow"),
                Track(title: "Timeless", album: "Hurry Up Tomorrow", duration: 255, coverImageName: "hurryUpTomorrow"),
                Track(title: "Niagara Falls", album: "Hurry Up Tomorrow", duration: 276, coverImageName: "hurryUpTomorrow"),
                Track(title: "Take Me Back To LA", album: "Hurry Up Tomorrow", duration: 253, coverImageName: "hurryUpTomorrow"),
                Track(title: "Big Sleep", album: "Hurry Up Tomorrow", duration: 224, coverImageName: "hurryUpTomorrow"),
                Track(title: "Give Me Mercy", album: "Hurry Up Tomorrow", duration: 226, coverImageName: "hurryUpTomorrow"),
                Track(title: "Drive", album: "Hurry Up Tomorrow", duration: 188, coverImageName: "hurryUpTomorrow"),
                Track(title: "The Abyss", album: "Hurry Up Tomorrow", duration: 282, coverImageName: "hurryUpTomorrow"),
                Track(title: "Red Terror", album: "Hurry Up Tomorrow", duration: 231, coverImageName: "hurryUpTomorrow"),
                Track(title: "Without a Warning", album: "Hurry Up Tomorrow", duration: 347, coverImageName: "hurryUpTomorrow"),
                Track(title: "Hurry Up Tomorrow", album: "Hurry Up Tomorrow", duration: 341, coverImageName: "hurryUpTomorrow")
            ]

    
    let tips: [Tip] = [
        Tip(text: "Practice your speech multiple times."),
        Tip(text: "Focus on your breathing to stay calm."),
        Tip(text: "Visualize a successful presentation."),
        Tip(text: "Make eye contact with your audience."),
        Tip(text: "Use gestures to emphasize key points."),
        Tip(text: "Start with a strong opening line."),
        Tip(text: "Record yourself to improve your delivery."),
        Tip(text: "Keep your message clear and concise."),
        Tip(text: "Engage your audience with questions."),
        Tip(text: "Embrace pauses to add impact.")
    ]
    
    @State private var currentTrackIndex = 0
    @State private var isPlaying = false
    @State private var playbackProgress: Double = 0
    @State private var currentTipIndex = 0
    @State private var bounce = false
    
    // Timer per aggiornare lo slider automaticamente
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    var currentTrack: Track { tracks[currentTrackIndex] }
    var currentTip: Tip { tips[currentTipIndex] }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                // Album art con animazione bouncing
                Image(currentTrack.coverImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .scaleEffect(bounce ? 1.05 : 1.0)
                    .animation(isPlaying ? Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true) : .default, value: bounce)
                    .onChange(of: isPlaying) {
                        bounce = isPlaying
                    }
                
                // Track info
                VStack(spacing: 4) {
                    Text(currentTrack.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(currentTrack.album)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                // Slider per la durata
                VStack {
                    Slider(value: $playbackProgress, in: 0...currentTrack.duration)
                        .accentColor(.pink)
                    HStack {
                        Text(formatTime(playbackProgress))
                        Spacer()
                        Text(formatTime(currentTrack.duration))
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                }
                
                // Playback controls + Tips centrati
                VStack(spacing: 20) {
                    // Pulsanti di riproduzione
                    HStack(spacing: 50) {
                        Button(action: previousTrack) {
                            Image(systemName: "backward.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        }
                        Button(action: { isPlaying.toggle() }) {
                            Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.pink)
                                .shadow(radius: 5)
                        }
                        Button(action: nextTrack) {
                            Image(systemName: "forward.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        }
                    }
                    
                    // Mini-interfaccia dei consigli centrata tra freccette
                    HStack {
                        Button(action: previousTip) {
                            Image(systemName: "chevron.left.circle.fill")
                                .font(.title)
                                .foregroundColor(.pink)
                        }
                        Spacer()
                        Text(currentTip.text)
                            .font(.body)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color(white: 0.15))
                            .cornerRadius(12)
                            .shadow(radius: 3)
                        Spacer()
                        Button(action: nextTip) {
                            Image(systemName: "chevron.right.circle.fill")
                                .font(.title)
                                .foregroundColor(.pink)
                        }
                    }
                    .padding(.horizontal, 30)
                }
                
                Spacer()
            }
            .padding()
            // Aggiorna lo slider automaticamente con il timer
            .onReceive(timer) { _ in
                guard isPlaying else { return }
                if playbackProgress < currentTrack.duration {
                    playbackProgress += 0.5 // incremento ogni 0.5 sec
                } else {
                    playbackProgress = currentTrack.duration
                    nextTrack() // passa automaticamente alla traccia successiva
                }
            }
        }
    }
    
    // Funzioni per cambiare consigli
    func nextTip() {
        currentTipIndex = (currentTipIndex + 1) % tips.count
    }
    
    func previousTip() {
        currentTipIndex = (currentTipIndex - 1 + tips.count) % tips.count
    }
    
    // Funzioni per cambiare traccia
    func nextTrack() {
        currentTrackIndex = (currentTrackIndex + 1) % tracks.count
        playbackProgress = 0
        isPlaying = true
    }
    
    func previousTrack() {
        currentTrackIndex = (currentTrackIndex - 1 + tracks.count) % tracks.count
        playbackProgress = 0
        isPlaying = true
    }
    
    // Funzione per formattare il tempo in mm:ss
    func formatTime(_ seconds: Double) -> String {
        let mins = Int(seconds) / 60
        let secs = Int(seconds) % 60
        return String(format: "%02d:%02d", mins, secs)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
