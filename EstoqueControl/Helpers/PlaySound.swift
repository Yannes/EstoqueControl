//
//  PlaySound.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("ERROR: Could not find and play the sound file!")
    }
  }
}
