//
//  SecondViewController.swift
//  Lab3
//
//  Created by Brenna Pavlinchak on 10/13/24.
//

import UIKit

class SecondViewController: UIViewController
{
    var redLabelFloat: Float!
    var greenLabelFloat: Float!
    var blueLabelFloat: Float!
    var alphaLabelFloat: Float!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    @IBOutlet var RandomizeColorsButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var NumbersToGet: (redLabel: String, greenLabel: String, blueLabel: String, alphaLabel: String)?
        
        if let numbers = NumbersToGet
        {
            let redLabelValue = "\(numbers.redLabel)"
            let greenLabelValue = "\(numbers.greenLabel)"
            let blueLabelValue = "\(numbers.blueLabel)"
            let alphaLabelValue = "\(numbers.alphaLabel)"
            
            redLabelFloat = Float(redLabelValue)
            greenLabelFloat = Float(greenLabelValue)
            blueLabelFloat = Float(blueLabelValue)
            alphaLabelFloat = Float(alphaLabelValue)
        }
        
        redLabelFloat = redSlider.value
        greenLabelFloat = greenSlider.value
        blueLabelFloat = blueSlider.value
        alphaLabelFloat = alphaSlider.value
    }
    
    @IBAction func dismissViewController()
    {
        dismiss(animated: true)
    }
    
    @IBAction func randomizeColors()
    {
        redLabelFloat = Float.random(in: 0.0...1.0)
        greenLabelFloat = Float.random(in: 0.0...1.0)
        blueLabelFloat = Float.random(in: 0.0...1.0)
        alphaLabelFloat = Float.random(in: 0.0...1.0)
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
