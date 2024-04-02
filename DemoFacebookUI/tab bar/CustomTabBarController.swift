//
//  CustomTabBarController.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//

import UIKit

class CustomTabBarController: UITabBarController {

    @IBOutlet weak var customTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var traitCollection: UITraitCollection {
        let traitCollection = super.traitCollection
        let newTraitCollection = UITraitCollection(horizontalSizeClass: .regular)
        return UITraitCollection(traitsFrom: [traitCollection, newTraitCollection])
    }
}

