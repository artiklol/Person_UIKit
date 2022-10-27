//
//  SectionTableViewController.swift
//  Person_UIKit
//
//  Created by Artem Sulzhenko on 25.10.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {

    let persons = Person.createPersons()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let emailAndPhone = 2
        return emailAndPhone
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullInfo", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section].name + " " + persons[section].surname
        return person
    }
    


}
