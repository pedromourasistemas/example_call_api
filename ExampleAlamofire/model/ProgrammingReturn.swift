//
//  ProgrammingLanguages.swift
//  ExampleAlamofire
//
//  Created by Pedro Henrique de Moura on 30/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//
import UIKit
import ObjectMapper

class ProgrammingReturn: Mappable {
    var programmingLanguages: [ProgrammingLanguages] = []
    
    required init?(map: Map){

    }
    
    func mapping(map: Map) {
        self.programmingLanguages <- map["programmingLanguages"]
    }
}
