//
//  SectionTableViewController.swift
//  Person_UIKit
//
//  Created by Artem Sulzhenko on 25.10.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    let GroupSection = ["---","Описание","Ингредиенты","Как приготовить", "Пищевая ценность"]
    let itemsInfoArrays = [
    ["1111111111111111"],
    ["1.4","1.5","1.6"],
    ["22", "33"],
    ["6","7", "8"],
    ["26","27", "28"]
    ]
    var name: [String] = []
    var email: [[String]] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Количество секций
        return personsRandom.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Количество данных в каждой секции
        for person in personsRandom{
            email.append([person.email])
        }
        return email[section].count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullInfo", for: indexPath)
        
        // Заполняем данные в каждую секцию
        cell.textLabel?.text = email[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        for person in personsRandom{
            name.append(person.name)
        }
        let section = name[section]
        return section
    }
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
