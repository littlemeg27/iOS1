//
//  ThirdViewController.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var albumName: UITextField!
    @IBOutlet weak var yearReleased: UITextField!
    @IBOutlet weak var song1: UITextField!
    @IBOutlet weak var song2: UITextField!
    @IBOutlet weak var song3: UITextField!
    @IBOutlet weak var song4: UITextField!
    @IBOutlet weak var song5: UITextField!
    @IBOutlet weak var song6: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
