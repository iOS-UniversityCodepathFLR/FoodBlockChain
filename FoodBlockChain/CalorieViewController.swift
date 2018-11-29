//
//  CalorieViewController.swift
//  FoodBlockChain
//
//  Created by Ryan Davis on 11/29/18.
//  Copyright © 2018 Ryan Davis. All rights reserved.
//

import UIKit
import Parse


class CalorieViewController: UIViewController {

    var calorieCount:String = "";
    @IBOutlet var calorieInput: UITextField! //input Calories
    
    @IBAction func touchforNumbers(_ sender: Any) {view.endEditing(true)
    }
    
    @IBAction func onEnter(_ sender: Any) {
        
        calorieCount = calorieInput.text ?? "0"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.performSegue(withIdentifier: "backEnter", sender: nil)
        
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
