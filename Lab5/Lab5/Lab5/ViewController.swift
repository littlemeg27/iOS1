//
//  ViewController.swift
//  Lab5
//
//  Created by Brenna Pavlinchak on 10/20/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField6.delegate = self

        textField6.returnKeyType = .done
    }

    func textFieldReturn(_ textField: UITextField) -> Bool
    {
        if textField == textField1
        {
            textField2.becomeFirstResponder()
        }
        else if textField == textField2
        {
            textField3.becomeFirstResponder()
        }
        else if textField == textField3
        {
            textField4.becomeFirstResponder()
        }
        else if textField == textField4
        {
            textField5.becomeFirstResponder()
        }
        else if textField == textField5
        {
            textField6.becomeFirstResponder()
        }
        else if textField == textField6
        {
            textField.resignFirstResponder() 
        }
        return true
    }

    @IBAction func goToSecondViewController(_ sender: UIButton)
    {
        let fields = [textField1, textField2, textField3, textField4, textField5, textField6]
        let textFields = fields.compactMap { $0?.text }

        guard textFields.allSatisfy({ !$0.isEmpty }) else
        {
            showAlert(message: "Please fill in all fields")
            return
        }

            performSegue(withIdentifier: "showSecondVC", sender: textFields)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showSecondVC", let secondVC:SecondViewController = segue.destination as? SecondViewController, let textFields = sender as? [String]
        {
            let secondVC = segue.destination as! SecondViewController
            secondVC.textFields = [textField1.text!, textField2.text!, textField3.text!, textField4.text!, textField5.text!, textField6.text!]
        }
    }

    func showAlert(message: String)
    {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

    func updateLabel(with text: String)
    {
        resultLabel.text = text
    }
}

