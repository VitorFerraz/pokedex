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
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = pokemon.name
        
        pokemon.downloadPokemonDetail {
            //só ira ser chamado depois que o network call estiver completo
            print("passou pelo downloadPokemonDetail")
            self.updateUI()
        }
    }

    func updateUI(){
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        typeLbl.text = pokemon.type
        weightLbl.text = pokemon.weight
        heightLbl.text = pokemon.height
        nameLbl.text = pokemon.name
        pokedexLbl.text = "\(pokemon.pokedexId)"
        
    }


    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
