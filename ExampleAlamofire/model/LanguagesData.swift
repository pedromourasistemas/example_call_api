//
//  WeatherData.swift
//  ExampleAlamofire
//
//  Created by Pedro Henrique de Moura on 25/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//

import Mapper

struct LanguagesData: Mappable {

    let name: String
    let desc: String
    let imageURL: String

    init(map: Mapper) throws {
        name = try map.from("name")
        desc = try map.from("desc")
        imageURL = try map.from("imageURL")
    }

}
