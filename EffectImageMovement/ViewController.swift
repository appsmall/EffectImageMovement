//
//  ViewController.swift
//  EffectImageMovement
//
//  Created by Rahul Kumar on 23/07/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parallexEffect()
    }
    
    func parallexEffect() {
        let min = CGFloat(-500)
        let max = CGFloat(500)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        
        sceneImageView.addMotionEffect(motionEffectGroup)
    }


}

