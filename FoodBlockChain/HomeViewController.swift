//
//  HomeViewController.swift
//  FoodBlockChain
//
//  Created by Ryan Davis on 10/21/18.
//  Copyright © 2018 Ryan Davis. All rights reserved.
//

import UIKit
import Parse
class HomeViewController: UIViewController {

    @IBAction func logOutBTN(_ sender: Any) {
        PFUser.logOutInBackground(block: { (error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Successful loggout")
                // Load and show the login view controller
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let login = storyboard.instantiateViewController(withIdentifier: "LoginScreen") as! LoginViewController
                self.present(login, animated: true, completion: nil)
            }
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
