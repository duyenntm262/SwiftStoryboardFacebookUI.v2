//
//  PostCell.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var userAvatar: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var content: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var imvLike: UIImageView!
    
    @IBOutlet weak var imvHeart: UIImageView!
    
    @IBOutlet weak var numberOfInteract: UILabel!
    
    @IBOutlet weak var numberOfComment: UILabel!
    
    @IBOutlet weak var iconLike: UIImageView!
    
    @IBOutlet weak var btnLike: UILabel!
    
    @IBOutlet weak var iconComment: UIImageView!
    
    @IBOutlet weak var btnComment: UILabel!
    
    @IBOutlet weak var iconShare: UIImageView!
    
    @IBOutlet weak var btnShare: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
