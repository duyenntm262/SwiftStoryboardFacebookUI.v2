//
//  CollectionHorizontalCell.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//

import UIKit

class CollectionHorizontalCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: "UserStoryCell", bundle: nil), forCellWithReuseIdentifier: "UserStoryCell")
        collectionView.register(UINib(nibName: "CreateStoryCell", bundle: nil), forCellWithReuseIdentifier: "CreateStoryCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension CollectionHorizontalCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.row == 0) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreateStoryCell", for: indexPath) as! CreateStoryCell
            cell.layer.cornerRadius = 10.0
            cell.RoundedBackground.layer.cornerRadius = cell.RoundedBackground.frame.height/2
            cell.RoundedBackground.translatesAutoresizingMaskIntoConstraints = true
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserStoryCell", for: indexPath) as! UserStoryCell
        cell.userAvt.image = UIImage(named: "img2")
        cell.userAvt.image = UIImage(named: "img6")
        cell.userAvt.layer.cornerRadius = cell.userAvt.frame.height/2
        cell.userAvt.translatesAutoresizingMaskIntoConstraints = true
        cell.userImageView.image = UIImage(named: "person")
        cell.userImageView.layer.masksToBounds = true
        cell.userImageView.layer.cornerRadius = 10.0
        cell.userName.text = "Din Din"
        return cell
    }
    
    
}
