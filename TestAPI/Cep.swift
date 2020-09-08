//
//  Cep.swift
//  TestAPI
//
//  Created by Douglas Cardoso Ferreira on 03/09/20.
//  Copyright © 2020 Douglas Cardoso Ferreira. All rights reserved.
//

import Foundation

struct Cep: Decodable {
    var logradouro: String = ""
    var localidade: String = ""
    var uf: String = ""
    var ddd: String = ""
}
