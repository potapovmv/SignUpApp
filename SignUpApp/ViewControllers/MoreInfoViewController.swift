//
//  MoreInfoViewController.swift
//  SignUpApp
//
//  Created by Admin1 on 02.04.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var moreInfoLabel: UILabel!
    
    @IBOutlet weak var firstFotoView: UIView!
    @IBOutlet weak var secondFotoView: UIView!
    
    let moreInfo = PersonMoreInfo()
    
    override func viewDidLoad() {
        moreInfoLabel.text = moreInfo.moreInfo
        
        let image = UIImage(named: "firstFoto")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: firstFotoView.frame.width, height: firstFotoView.frame.height)
        firstFotoView.addSubview(imageView)
        let imageSecond = UIImage(named: "secondFoto")
        let imageViewSecond = UIImageView(image: imageSecond!)
        imageViewSecond.frame = CGRect(x: 0, y: 0, width: secondFotoView.frame.width, height: secondFotoView.frame.height)
        secondFotoView.addSubview(imageViewSecond)
        
    }
}
