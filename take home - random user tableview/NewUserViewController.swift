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
        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
        
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
