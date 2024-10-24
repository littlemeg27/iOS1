//
//  SecondViewController.swift
//  Lab6
//
//  Created by Brenna Pavlinchak on 10/22/24.
//

import UIKit

class SecondViewController: UIViewController
{
    var DogObject: DogObject!
    
    @IBOutlet weak var breedTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var isFixedSwitch: UISwitch!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        breedTextField.text = DogObject.breed
        ageTextField.text = "\(DogObject.age)"
        isFixedSwitch.isOn = DogObject.isSpayedOrNeutered
    }
    
    @IBAction func saveChanges(_ sender: UIButton)
    {
        guard let name = breedTextField.text, !name.isEmpty,
        let ageText = ageTextField.text, !ageText.isEmpty,
        let age = Int(ageText) else
        {
            showAlert("Invalid Data", "Please ensure all fields are filled correctly.")
            return
        }
            DogObject.breed = name
            DogObject.age = age
            DogObject.isSpayedOrNeutered = isFixedSwitch.isOn
            navigationController?.popViewController(animated: true)
        }
        
        @IBAction func cancelChanges(_ sender: UIButton)
        {
            navigationController?.popViewController(animated: true)
        }
        
        private func showAlert(_ title: String, _ message: String)
        {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
}
