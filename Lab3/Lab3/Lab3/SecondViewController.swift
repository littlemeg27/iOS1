//
//  SecondViewController.swift
//  Lab3
//
//  Created by Brenna Pavlinchak on 10/13/24.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    @IBOutlet var RandomizeColorsButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    @IBAction func dismissViewController()
    {
        dismiss(animated: true)
    }
    
    @IBAction func randomizeColors()
    {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
