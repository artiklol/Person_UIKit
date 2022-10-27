//
//  PersonTableViewController.swift
//  Person_UIKit
//
//  Created by Artem Sulzhenko on 25.10.2022.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var persons = Person.createPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let currentList = persons.remove(at: sourceIndexPath.row)
        persons.insert(currentList, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailsViewController
            detailVC.detailPerson = persons[indexPath.row]
        }
    }
}
