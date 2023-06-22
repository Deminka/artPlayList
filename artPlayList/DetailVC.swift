//
//  DetailVC.swift
//  artPlayList
//
//  Created by mac on 10.05.2023.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var trackTitle = ""
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0

    }

}
