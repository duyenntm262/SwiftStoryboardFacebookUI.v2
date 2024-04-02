//
//  HomeViewController.swift
//  DemoFacebookUI
//
//  Created by Din Din on 01/04/2024.
//


import UIKit

class HomeViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    let customView = UILabel(frame: CGRect(x: 0, y:0, width: 200, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "StatusCell", bundle: nil), forCellReuseIdentifier: "StatusCell")
        tableView.register(UINib(nibName: "CollectionHorizontalCell", bundle: nil), forCellReuseIdentifier: "CollectionHorizontalCell")
        tableView.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "PostCell")
        
        navigationController?.navigationBar.tintColor = .label
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(scrollView.contentOffset.y)
        
        let safeAreaTop = UIApplication.shared.windows.filter
            {$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        
        let magicalSafeAreaTop: CGFloat = safeAreaTop +
        (navigationController?.navigationBar.frame.height ?? 0)
        
        customView.text = "facebook"
        customView.textColor = .systemBlue
        customView.font = UIFont.systemFont(ofSize: 30)
        customView.font = UIFont.boldSystemFont(ofSize: 30.0)
        customView.textAlignment = .left
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                barButtonSystemItem: .search,
                target: self,
                action: nil
            ),
            UIBarButtonItem(
                barButtonSystemItem: .add,
                target: self,
                action: nil
            )
        ]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            customView: customView
        )
        
        let alpha: CGFloat = 1 - ((scrollView.contentOffset.y + magicalSafeAreaTop) / magicalSafeAreaTop)
        customView.alpha = alpha
        
        let offset = scrollView.contentOffset.y + magicalSafeAreaTop
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0,-offset))
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StatusCell", for: indexPath) as! StatusCell
            cell.userAvatar.image = UIImage(named: "user_avatar")
            cell.userAvatar.layer.cornerRadius = cell.userAvatar.frame.height/2
            cell.userAvatar.translatesAutoresizingMaskIntoConstraints = true
            cell.userStatus.text = "What's on your mind?"
            cell.photosImageView.image = UIImage(named: "photos")
            return cell
        }
        else if (indexPath.row == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionHorizontalCell", for: indexPath) as! CollectionHorizontalCell
            
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        cell.userAvatar.image = UIImage(named: "user_avatar")
        cell.userAvatar.layer.cornerRadius = cell.userAvatar.frame.height/2
        cell.userAvatar.translatesAutoresizingMaskIntoConstraints = true
        cell.userName.text = "User name"
        cell.time.text = "17 minutes"
        cell.userImage.image = UIImage(named: "post4")
        cell.imvLike.image = UIImage(named: "like 1")
        cell.imvHeart.image = UIImage(named: "heart")
        cell.numberOfInteract.text = "1,5 K"
        cell.numberOfComment.text = "30 comments"
        cell.iconLike.image = UIImage(named: "like 2")
        cell.iconComment.image = UIImage(named: "comment 1")
        cell.iconShare.image = UIImage(named: "share")
        cell.btnLike.text = "Like"
        cell.btnComment.text = "Comment"
        cell.btnShare.text = "Share"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0) {
            return 86
        }
        else if (indexPath.row == 1) {
            return 250
        }
        return 506
    }
    
    
}

