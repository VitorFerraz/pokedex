//
//  PokemonDatailVC.swift
//  pokedex
//
//  Created by Vitor Ferraz on 25/01/17.
//  Copyright © 2017 Vitor Ferraz. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = pokemon.name
    }




}
