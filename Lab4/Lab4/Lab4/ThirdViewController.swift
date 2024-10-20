//
//  ThirdViewController.swift
//  Lab4
//
//  Created by Brenna Pavlinchak on 10/15/24.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var countryNameTextField: UITextField!
    @IBOutlet weak var countryPopulationTextField: UITextField!
    
    var continentName: String?
    var World: [String: Int] = [:]
    weak var delegate: UpdateContinentDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Country"
    }

    @IBAction func addButtonTapped(_ sender: UIButton)
    {
        guard let countryName = countryNameTextField.text, !countryName.isEmpty, let populationText = countryPopulationTextField.text, let population = Int(populationText), population > 0 else
        {
            showAlert(message: "Please enter valid country name and population.")
            return
        }
        World[countryName] = population
        delegate?.updateContinentData(newData: World)

        navigationController?.popViewController(animated: true)
    }

    @IBAction func cancelButtonTapped(_ sender: UIButton)
    {
        navigationController?.popViewController(animated: true)
    }

    func showAlert(message: String)
    {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
