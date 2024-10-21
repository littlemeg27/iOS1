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
       
    var fieldTexts: [String] = []
       
    override func viewDidLoad()
    {
        super.viewDidLoad()

        label1.text = fieldTexts[0]
        label2.text = fieldTexts[1]
        label3.text = fieldTexts[2]
        label4.text = fieldTexts[3]
        label5.text = fieldTexts[4]
        label6.text = fieldTexts[5]
    }

    @IBAction func cancelButtonTapped(_ sender: UIButton)
    {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func reduceButtonTapped(_ sender: UIButton)
    {
        let reducedString = fieldTexts.reduce("") { $0 + " " + $1 }

        if let firstVC = navigationController?.viewControllers.first as? ViewController
        {
            firstVC.updateLabel(with: reducedString)
        }

        navigationController?.popViewController(animated: true)
    }
}
