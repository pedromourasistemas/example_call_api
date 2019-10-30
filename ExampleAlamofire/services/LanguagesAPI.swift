//
//  LanguagesAPI.swift
//  ExampleAlamofire
//
//  Created by Pedro Henrique de Moura on 28/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import SwiftyJSON
import AlamofireObjectMapper

public class LanguagesAPI: NSObject {
    
    func getLanguages(completion: @escaping (String) -> Void) {
        
        Alamofire.request(API.ROOT+API.LANGUAGES, parameters: nil)
                 .responseObject { (response: DataResponse<ProgrammingReturn>) in
                    
                    let data = response.result.value
                    
                    print(data?.programmingLanguages)
        }
    }
}
