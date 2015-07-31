//
//  ViewController.swift
//  BudgetApp
//
//  Created by Shriya Nevatia on 7/13/15.
//  Copyright (c) 2015 Shriya Nevatia. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var AddTransaction: UIButton!
    @IBOutlet weak var TransactionDate: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let transaction = PFObject(className: "Transaction")
        transaction["Amount"] = 24.38
        transaction.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Object has been saved")
            self.TextLabel.text = "Changed"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

