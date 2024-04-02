//
//  ViewController.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewForTab: UIView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
        if tag == 1 {
            guard let home = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else { return }
            contentView.addSubview(home.view)
            home.didMove(toParent: self)
        } else if tag == 2 {
            guard let video = self.storyboard?.instantiateViewController(identifier: "VideoViewController") as? VideoViewController else { return }
            contentView.addSubview(video.view)
            video.didMove(toParent: self)
        } else if tag == 3 {
            
        } else if tag == 4 {
            
        } else if tag == 5 {
            
        } else if tag == 6 {
            guard let menu = self.storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController else { return }
            contentView.addSubview(menu.view)
            menu.didMove(toParent: self)
        }
    }
}
