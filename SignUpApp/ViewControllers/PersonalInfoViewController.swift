//
//  PersonalInfoViewController.swift
//  SignUpApp
//
//  Created by Admin1 on 02.04.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var marriedLabel: UILabel!
    
    @IBOutlet weak var fotoView: UIView!
    
    let name = PersonInfo()
    let surname = PersonInfo()
    let age = PersonInfo()
    let country = PersonInfo()
    let work = PersonInfo()
    let married = PersonInfo()
    
    override func viewDidLoad() {
        nameLabel.text = name.name
        surnameLabel.text = surname.surname
        ageLabel.text = String(age.age)
        countryLabel.text = country.country
        workLabel.text = work.work
        marriedLabel.text = married.married
        
        let image = UIImage(named: "avatar")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: fotoView.frame.width, height: fotoView.frame.height)
        fotoView.addSubview(imageView)
    }
}
