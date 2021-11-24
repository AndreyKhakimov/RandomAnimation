//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Andrey Khakimov on 24.11.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationInfoLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAnimationInfoLabel(for : animation)
    }
    
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        animate(view: animationView, with: animation)
        changeAnimationInfoLabel(for: animation)
        let nextAnimation = Animation.getRandomAnimation()
        animation = nextAnimation
        sender.setTitle("\(nextAnimation.preset)", for: .normal)
    }
    
}

extension AnimationViewController {
    private func animate(view: SpringView, with animation: Animation) {
        view.animation = animation.preset
        view.curve = animation.curve
        view.force = animation.force
        view.duration = animation.duration
        view.delay = animation.delay
        view.animate()
    }
    
    private func changeAnimationInfoLabel(for animation: Animation) {
        animationInfoLabel.text =
                                    """
                                    Preset: \(animation.preset)
                                    Curve: \(animation.curve)
                                    Force: \(String(format: "%.2f",animation.force ))
                                    Duration: \(String(format: "%.2f", animation.duration))
                                    Delay: \(String(format: "%.2f", animation.delay))
                                    """
    }
}
