//
//  Model.swift
//  RandomAnimation
//
//  Created by Andrey Khakimov on 24.11.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        let randomPreset = AnimationPreset.allCases.randomElement()?.rawValue
        let randomCurve = AnimationCurve.allCases.randomElement()?.rawValue
        let randomForce = Double.random(in: 1...3)
        let randomDuration = Double.random(in: 0.1...1)
        let randomDelay = Double.random(in: 0.1...0.3)
        
        return Animation(preset: randomPreset ?? "shake", curve: randomCurve ?? "easeIn", force: randomForce, duration: randomDuration, delay: randomDelay)
    }
}

enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}


