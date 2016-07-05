//
//  SecondViewController.swift
//  ToDo
//
//  Created by Alexis Navarro on 7/5/16.
//  Copyright © 2016 Alexis Navarro. All rights reserved.
//

import UIKit

var todos = [String]()

class SecondViewController: UIViewController {

    @IBOutlet weak var txtNewItem: UITextField!
    
    @IBOutlet weak var rdbtnAwesome: UISwitch!
    
    @IBAction func changeAwesome(sender: AnyObject) {
        if rdbtnAwesome.on {
            NSUserDefaults.standardUserDefaults().setValue(true, forKeyPath: "isAwesome?")
        }else {
            NSUserDefaults.standardUserDefaults().setValue(false, forKeyPath: "isAwesome?")
        }
        
        print(NSUserDefaults.standardUserDefaults().valueForKey("isAwesome?")!)
    }
    
    @IBAction func addItem(sender: AnyObject) {
        
        if txtNewItem.text?.characters.count > 0 {
            todos.append(txtNewItem.text!)
            txtNewItem.text = ""
            self.view.endEditing(true)
            print(todos)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(NSUserDefaults.standardUserDefaults().valueForKey("isAwesome?")! as! Bool)
        rdbtnAwesome.on = NSUserDefaults.standardUserDefaults().valueForKey("isAwesome?")! as! Bool
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

