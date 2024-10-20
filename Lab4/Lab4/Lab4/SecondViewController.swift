//
//  SecondViewController.swift
//  Lab4
//
//  Created by Brenna Pavlinchak on 10/15/24.
//

import UIKit

class SecondViewController: UIViewController
{
    var World: [String: [String: Int]] = [:]
    weak var delegate: UpdateContinentDelegate?
    
    @IBOutlet weak var continentLabel: UILabel!
    @IBOutlet weak var continentTextView: UITextView!
    @IBAction func AddCountryButton(_ sender: Any)
    {
        if let delegate = delegate
        {
            delegate.updateContinent(continentName: continentName)
        }
    }
    @IBAction func GoBackButton(_ sender: Any)
    {

    }
    
    var continentName: String?

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayContinentInfo()
    }
            
    func displayContinentInfo()
    {
        guard let continentName = continentName else { return }
        continentLabel.text = continentName
            
        let totalCountries = World.count
        let totalPopulation = World.values.reduce(0) { ($1["population"] as? Int) ?? 0}
        var infoText = "\(continentName) has \(totalCountries) countries with a total population of \(totalPopulation) people.\n\n"
            
        for (country, population) in World
        {
            infoText += "\(country) has a population of \(population) people.\n"
        }
        
        continentTextView.text = infoText
    }

    @IBAction func addCountryButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "showThirdVC", sender: self)
    }

    @IBAction func goBackButton(_ sender: UIButton)
    {
        navigationController?.popViewController(animated: true)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showSecondVC", let secondVC = segue.destination as? SecondViewController, let continentName = sender as? String
        {
            secondVC.continentName = continentName
            
            if let countries = World[continentName] as? [String: [String: Any]]
            {
                var continentPopulationData: [String: [String: Int]] = [:]
                
                for (country, info) in countries
                {
                    if let population = info["population"] as? Int
                    {
                        continentPopulationData[country] = ["population": population]
                    }
                }
                secondVC.World = continentPopulationData
            }
            else
            {
                secondVC.World = [:]
            }

            secondVC.delegate = self
        }
    }
}
