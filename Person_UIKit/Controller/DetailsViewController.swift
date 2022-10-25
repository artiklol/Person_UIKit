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
    
    var detailArray: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = "\(detailArray.name) \(detailArray.surname)"
        phoneNumberLabel.text = detailArray.phoneNumber
        emailLabel.text = detailArray.email
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
