//
//  SettingsModels.swift
//  Spotify
//
//  Created by Alexey Lim on 18/1/25.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
