//
//  ViewController.swift
//  Lab3
//
//  Created by Brenna Pavlinchak on 10/13/24.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBAction func SecondScreenButton(_ sender: Any)
    {
        
    }
    
    var numbersToSend: (redString: String, greenString: String, blueString: String, alphaString: String)?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let color = UIColor(red: 0.3, green: 0.6, blue: 0.8, alpha: 1.0)
        
        self.view.backgroundColor = color
        
        let red: CGFloat = 0.3
        let green: CGFloat = 0.6
        let blue: CGFloat = 0.8
        let alpha: CGFloat = 1.0
        
        let redString = "\(red)"
        let greenString = "\(green)"
        let blueString = "\(blue)"
        let alphaString = "\(alpha)"
        
        redLabel.text = redString
        blueLabel.text = greenString
        greenLabel.text = blueString
        alphaLabel.text = alphaString
        
        redLabel.textColor = UIColor.black
        blueLabel.textColor = UIColor.black
        greenLabel.textColor = UIColor.black
        alphaLabel.textColor = UIColor.black
        
        
        
        if let SecondScreenViewController = numbersToSend
        {
            redLabel.text = SecondScreenViewController.redString
            blueLabel.text = SecondScreenViewController.greenString
            greenLabel.text = SecondScreenViewController.blueString
            alphaLabel.text = SecondScreenViewController.alphaString
        }
    }
    

}

