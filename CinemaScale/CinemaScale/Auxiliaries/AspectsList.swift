//
//  AspectsList.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 21/05/24.
//

import SwiftUI

class AspectsList: ObservableObject {
    
    // temp aspect
    @Published var tappedAspect: Aspects = Aspects(
        aspectName: "NoAspect",
        icon: Image(systemName: "xmark"),
        subtitle: "This is a Subtitle",
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele")
    
    @Published var aspectsList: [Aspects] = [
        Aspects(
            aspectName: "Plot",
            icon: Image(systemName: "book"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Attraction",
            icon: Image(systemName: "popcorn"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Theme",
            icon: Image(systemName: "heart.circle"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Acting",
            icon: Image(systemName: "theatermasks"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Dialogue",
            icon: Image(systemName: "ellipsis.message"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Cinematography",
            icon: Image(systemName: "photo.stack"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Editing",
            icon: Image(systemName: "scissors"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Soundtrack",
            icon: Image(systemName: "hifispeaker.2"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "Directing",
            icon: Image(systemName: "movieclapper"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"),
        Aspects(
            aspectName: "It Factor",
            icon: Image(systemName: "medal"),
            subtitle: "This is a Subtitle",
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele")
    ]
}
