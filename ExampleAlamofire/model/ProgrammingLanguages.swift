//
//  Created by Pedro Henrique de Moura on 25/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//

import UIKit
import ObjectMapper

class ProgrammingLanguages: Mappable
{
    var name: String?
    var desc: String?
    var imageURL: String?
    
    init(name: String, desc: String, imageURL: String) {
        self.name = name
        self.desc = desc
        self.imageURL = imageURL
    }
    
    required init?(map: Map){

    }
    
    func mapping(map: Map) {
        self.name <- map["name"]
        self.desc <- map["desc"]
        self.imageURL <- map["imageURL"]
    }
}
