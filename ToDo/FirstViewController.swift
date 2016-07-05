//
//  FirstViewController.swift
//  ToDo
//
//  Created by Alexis Navarro on 7/5/16.
//  Copyright © 2016 Alexis Navarro. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tblTodo: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        myCell.textLabel?.text = todos[indexPath.row]
        
        return myCell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            todos.removeAtIndex(indexPath.row)
            tblTodo.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        tblTodo.reloadData()
    }

}

