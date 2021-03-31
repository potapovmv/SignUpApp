//
//  WelcomeViewController.swift
//  SignUpApp
//
//  Created by Admin1 on 29.03.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeLabelText
    }
    
}
