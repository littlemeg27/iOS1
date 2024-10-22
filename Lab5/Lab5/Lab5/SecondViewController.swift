//
//  SecondViewController.swift
//  Lab5
//
//  Created by Brenna Pavlinchak on 10/20/24.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
       
    var textFields: [String] = []
       
    override func viewDidLoad()
    {
        super.viewDidLoad()

        label1.text = textFields[0]
        label2.text = textFields[1]
        label3.text = textFields[2]
        label4.text = textFields[3]
        label5.text = textFields[4]
        label6.text = textFields[5]
    }

    @IBAction func cancelButtonTapped(_ sender: UIButton)
    {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func reduceButtonTapped(_ sender: UIButton)
    {
        let reducedString = textFields.reduce("") { $0 + " " + $1 }

        if let ViewController = navigationController?.viewControllers.first as? ViewController
        {
            ViewController.updateLabel(with: reducedString)
        }

        navigationController?.popViewController(animated: true)
    }
}
