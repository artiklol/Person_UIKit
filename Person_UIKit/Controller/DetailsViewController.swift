//
//  DetailsViewController.swift
//  Person_UIKit
//
//  Created by Artem Sulzhenko on 25.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var detailPerson: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = "\(detailPerson.name) \(detailPerson.surname)"
        phoneNumberLabel.text = detailPerson.phoneNumber
        emailLabel.text = detailPerson.email
    }
}
