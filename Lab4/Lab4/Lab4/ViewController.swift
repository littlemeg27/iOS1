//
//  ViewController.swift
//  Lab4
//
//  Created by Brenna Pavlinchak on 10/15/24.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var NorthAmericaLabel: UILabel!
    @IBOutlet weak var SoutAmericaLabel: UILabel!
    @IBOutlet weak var EuropeLabel: UILabel!
    @IBOutlet weak var AsiaLabel: UILabel!
    @IBOutlet weak var OceaniaLabel: UILabel!
    @IBOutlet weak var AfricaLabel: UILabel!
    
    
    var World: [String: [String: Any]] = [:]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        World["Asia"] =
        [
            "country": "Japan",
            "population": 125000000
        ]
        World["South America"] =
        [
            "country": "Brazil", 
            "population": 213000000
        ]
        World["South America"] =
        [
            "country": "Brazil", 
            "population": 213000000
        ]
        World["Africa"] =
        [
            "country": "Kenya",
            "population": 55000000
        ]
        World["Europe"] =
        [
            "country": "Norway",
            "population": 5400000
        ]
        World["South America"] =
        [
            "country": "Argentina",
            "population": 46000000
        ]
        World["Asia"] =
        [
            "country": "Thailand",
            "population": 70000000
        ]
        
        updateNorthAmericaLabel()
    }
    
    func updateNorthAmericaLabel()
    {
        let totalCountries = World.values.reduce(0) { $0 + $1.count }
        let totalPopulation = World.values.reduce(0) { ($1["population"] as? Int) ?? 0}
        NorthAmericaLabel.text = "There are \(totalCountries) countries in North America, with a total population of \(totalPopulation) people."
    }
    
    @IBAction func continentButtonTapped(_ sender: UIButton)
    {
        guard let continentName = sender.titleLabel?.text else { return }
        performSegue(withIdentifier: "showSecondVC", sender: continentName)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showSecondVC",let secondVC = segue.destination as? SecondViewController,let continentName = sender as? String
        {
            
            secondVC.continentName = continentName

            if let countries = World[continentName] as? [String: [String: Any]]
            {
                var populationData: [String: Int] = [:]
                for (country, info) in countries
                {
                    if let population = info["population"] as? Int
                    {
                        populationData[country] = population
                    }
                }
                secondVC.World = populationData
            }
            else
            {
                secondVC.World = [:]
            }
        }
    }
    
    func getCountryDetails(continent: String, country: String) -> [String: Any]?
    {
        return World[continent]?[country] as? [String: Any]
    }
    
    protocol UpdateContinentDelegate: AnyObject
    {
        func updateContinentData(newData: [String: Int])
    }
}

