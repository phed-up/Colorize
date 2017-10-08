//
//  ShowColorNameVC.swift
//  Colors
//
//  Created by skwong on 9/25/17.
//  Copyright © 2017 fedup. All rights reserved.
//

import UIKit

class ShowColorNameVC: UIViewController {
    
    var displayText: VariableName!
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLbl.text = displayText.name
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
