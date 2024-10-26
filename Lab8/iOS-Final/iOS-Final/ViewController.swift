//
//  ViewController.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var artists: [Artist] = []
    var selectedArtist: Artist?
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Initialize artist data
        let beatlesImage = UIImage(named: "Beatles.jpg")
        let rollingStonesImage = UIImage(named: "Rolling_Stones.jpg")
        let ledZepplinImage = UIImage(named: "LedZepplin.jpg")
        let pinkFloydImage = UIImage(named: "Pink_Floyd.jpg")
        let queenImage = UIImage(named: "Queen.jpg")
        
        let beatles = Artist(name: "Beatles", genre: "Rock", image: beatlesImage)
        let rollingStones = Artist(name: "Rolling Stones", genre: "Blues Rock", image: rollingStonesImage)
        let ledZepplin = Artist(name: "Led Zepplin", genre: "Hard Rock", image: ledZepplinImage)
        let pinkFloyd = Artist(name: "Pink Floyd", genre: "Progressive Rock", image: pinkFloydImage)
        let queen = Artist(name: "Queen", genre: "Rock", image: queenImage)
        
        artists = [beatles, ledZepplin, pinkFloyd, queen, rollingStones]
    }
  
    @IBAction func artistButtonTapped(_ sender: UIButton)
    {
        // Use the tag property of the button to select the corresponding artist
        selectedArtist = artists[sender.tag]
        performSegue(withIdentifier: "ToSecondViewController", sender: self)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ToSecondViewController", let secondVC = segue.destination as? SecondViewController
        {
            secondVC.artists = selectedArtist
        }
    }
}
