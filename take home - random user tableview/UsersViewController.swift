//
//  UsersViewController.swift
//  take home - random user tableview
//
//  Created by shark boy on 2/28/24.
//

import UIKit

class UsersViewController: UIViewController {
    
    var users:[User] = []
    
    var usersToDisplay:[User] = []

    @IBOutlet weak var usersTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        usersTableView.dataSource = self
        usersTableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usersToDisplay = users
        usersTableView.reloadData()
    }
    
    @IBAction func unwindSegue(sender: UIStoryboardSegue) {

    }
    
    @IBAction func randomUserButtonPressed(_ sender: Any) {
        let randomUsers = getRandomUsers(count: 1)
        usersToDisplay = randomUsers
        usersTableView.reloadData()
    }
    

}

extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let user = usersToDisplay[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        
        
        
        var content = cell.defaultContentConfiguration()
        
        content.text = user.name
        content.secondaryText = user.id.uuidString
        
        cell.contentConfiguration = content
        
        return cell
        
    } // I may need a source of truth to be able to switch between all users and the random users
    
    
}



extension UsersViewController {
    
    func getRandomUsers(count: Int) -> [User] {
        let shuffled = users.shuffled()
        
        return Array(shuffled.prefix(count))
    }
}
