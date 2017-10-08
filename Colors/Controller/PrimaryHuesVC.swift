//
//  HuesVC.swift
//  Colors
//
//  Created by skwong on 9/25/17.
//  Copyright © 2017 fedup. All rights reserved.
//

import UIKit

class PrimaryHuesVC: UIViewController {
    
    var displayName: VariableName!
    
    func selectColor(color: String)
    {
        displayName.name = color
    }
    
    
    @IBOutlet weak var redBtnName: UIButton!

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        displayName = VariableName()
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func redBtnPressed(_ sender: Any)
    {
        performSegue(withIdentifier: "primary", sender: self)
       selectColor(color: "Red")
        
    }
    
    @IBAction func yellowBtnPressed(_ sender: Any)
    {
        performSegue(withIdentifier: "primary", sender: self)
        selectColor(color: "Yellow")
    }
    
    @IBAction func blueBtnPressed(_ sender: Any)
    {
        performSegue(withIdentifier: "primary", sender: self)
        selectColor(color: "Blue")
    }
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let ShowColorNameVC = segue.destination as? ShowColorNameVC
    {
        ShowColorNameVC.displayText = displayName
       
    }

    }

}

