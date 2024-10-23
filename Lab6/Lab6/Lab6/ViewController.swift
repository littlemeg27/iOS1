//
//  ViewController.swift
//  Lab6
//
//  Created by Brenna Pavlinchak on 10/22/24.
//

import UIKit

class ViewController: UIViewController
{
    var DogObject: DogObject!
    
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var isFixedLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var ageCategoryLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        breedLabel.text = DogObject.breed
        ageLabel.text = "\(DogObject.age)"
        isFixedLabel.text = "\(DogObject.isSpayedOrNeutered)"
        statusLabel.text = DogObject.status
        ageCategoryLabel.text = DogObject.ageCategory
    }
    
    @IBAction func toggleActiveStatus(_ sender: UIButton)
    {
        DogObject.toggleActiveStatus()
        isFixedLabel.text = "\(DogObject.isSpayedOrNeutered)"
        statusLabel.text = DogObject.status
    }
        
    @IBAction func incrementAge(_ sender: UIButton)
    {
        DogObject.incrementAge()
        ageLabel.text = "\(DogObject.age)"
        ageCategoryLabel.text = DogObject.ageCategory
    }
        
    @IBAction func editObjectProperties(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toSecondViewController", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toSecondViewController"
        {
            let secondVC = segue.destination as! SecondViewController
            secondVC.DogObject = DogObject
        }
    }


}

