//
//  ContactOneViewController.swift
//  PersonListApp
//
//  Created by Максим Жиляев on 22.11.2022.
//

import UIKit

class ContactOneViewController: UITableViewController {
    
    private var personList = Person.getPersonList()
       
    // MARK: - Table view data source
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personOne", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        detailsVC.person = personList[indexPath.row]
    }
    
    
}
