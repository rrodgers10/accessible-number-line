//
//  ViewController.swift
//  COMP585Number
//
//  Created by user914671 on 2/22/19.
//  Copyright © 2019 user914671. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Find the screen width and distance between each
        // point
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let distance = (screenWidth - 200) / 5
        
        // Create 5 labels and make them accessible
        while (i < 6) {
            let xdist = distance*CGFloat(i) + 87.5
            let label = UILabel(frame: CGRect(x: xdist, y: 550, width: 40, height: 40))
            label.isAccessibilityElement = true
            label.text = String(i)
            label.font = UIFont(name: "Arial", size: 40)
            self.view.addSubview(label)
            label.accessibilityTraits = UIAccessibilityTraits.playsSound
            label.isUserInteractionEnabled = true
            label.accessibilityLabel = String(i)
//            label.accessibilityHint = "Describes the number"
            i = i+1
        }
        
        
        
    }


}

