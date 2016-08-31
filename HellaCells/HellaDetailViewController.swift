//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Sergey Nevzorov on 8/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var bigNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.numberLabel.text = bigNumber
    }
}
