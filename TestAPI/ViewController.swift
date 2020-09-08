//
//  ViewController.swift
//  TestAPI
//
//  Created by Douglas Cardoso Ferreira on 03/09/20.
//  Copyright © 2020 Douglas Cardoso Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfCep: UITextField!
    @IBOutlet weak var lbLogradouro: UILabel!
    @IBOutlet weak var lbLocalidade: UILabel!
    @IBOutlet weak var lbDdd: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btPesquisar(_ sender: Any) {
        APIViaCep.pesquisarCEP(tfCep.text!) { (cep) in
            DispatchQueue.main.sync {
                self.lbLogradouro.text = "Logradouro: \(cep.logradouro)"
                self.lbLocalidade.text = "Localidade/UF: \(cep.localidade)/\(cep.uf)"
                self.lbDdd.text = "DDD: \(cep.ddd)"
            }
        }
    }

}

