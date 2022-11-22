//
//  ContactTwoViewController.swift
//  PersonListApp
//
//  Created by Максим Жиляев on 22.11.2022.
//

import UIKit

class ContactTwoViewController: UITableViewController {

    private var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personTwo", for: indexPath)
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        indexPath.row == 0 ? (content.text = person.phoneNumber) : (content.text = person.email)
        indexPath.row == 0 ? (content.image = UIImage.init(systemName: "phone")) : (content.image = UIImage.init(systemName: "envelope.fill"))
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return person.title
    }
    
    
    
}
