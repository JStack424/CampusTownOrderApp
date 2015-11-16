//
//  InbetweenViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class InbetweenViewController: UINavigationController {

    var passThisItem: MenuItem?
    
    override func viewDidLoad() {
        print("loading view")
        super.viewDidLoad()
        print("loaded view")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let nextView = segue.destinationViewController as! CartTableViewController
        // Pass the selected object to the new view controller.
        if let passedItem = passThisItem {
            nextView.itemToAdd = passedItem
            print("In between: \(passedItem.name)")
        }
    }

}
