//
//  ViewController.swift
//  ExampleAlamofire
//
//  Created by Pedro Henrique de Moura on 25/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//

import UIKit
import Alamofire
import Nuke

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        requestDataAPI()
    }
    
    //MARK: METHODS
    
    func requestDataAPI()
    {
        AF.request("https://curso-iniciantes-1.getsandbox.com/collectionView/programmingLanguages")
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseData { response in
                switch response.result {
                case .success:
                    debugPrint(response)
                case let .failure(error):
                    print(error)
                }
            }
            /*.response { response in
            debugPrint(response)
            
            //var data: Data = response.dataUsingEncoding(NSUTF8StringEncoding)!
            
            //processWeatherData(data)
        }*/
    }

    private func processWeatherData(data: Data) {
        do {
            if let JSON = try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary,
               let languages = LanguagesData.from(JSON) {
                print(languages.name)
                print(languages.desc)
                print(languages.imageURL)
            }

        } catch
        {
            print("Unable to Initialize Weather Data")
        }
    }

}

