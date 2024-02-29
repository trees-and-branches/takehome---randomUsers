    //
//  NewUserViewController.swift
//  take home - random user tableview
//
//  Created by shark boy on 2/28/24.
//

import UIKit

class NewUserViewController: UIViewController {
    

    @IBOutlet weak var UsernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func returnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "UnwindToPosts", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userName = UsernameTextField.text, let usersViewController = segue.destination as? UsersViewController else { return }
        usersViewController.users.append(User(id: UUID(), name: userName))
            
    }
    
     

}
