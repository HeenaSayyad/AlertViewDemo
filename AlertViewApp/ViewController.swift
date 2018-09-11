//
//  ViewController.swift
//  AlertViewApp
//
//  Created by ramjan sayyad on 13/08/18.
//  Copyright © 2018 ramjan sayyad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func alertButton(_ sender: Any)
    {
        let alert = UIAlertController(title: "Title", message: "Hello", preferredStyle: .alert)
        
        let dissmiss = UIAlertAction(title: "Dismiss", style: .cancel, handler: {
            (alert:UIAlertAction) -> Void in
            
        })
        let actionButton = UIAlertAction(title: "Action", style: .default, handler: {
            (alert:UIAlertAction) -> Void in
            self.alertLabel.text = "Hello Dear, How are you"
        })
        alert.addAction(dissmiss)
        alert.addAction(actionButton)
        present(alert,animated: true,completion: nil)
    }
}

