//
//  StatusCell.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//

import UIKit

class StatusCell: UITableViewCell {

    @IBOutlet weak var userAvatar: UIImageView!
    
    @IBOutlet weak var userStatus: UILabel!
    
    @IBOutlet weak var photosImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
