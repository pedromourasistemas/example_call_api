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
    
    //var imageURL: String

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://curso-iniciantes-1.getsandbox.com/collectionView/programmingLanguages").response { response in
            debugPrint(response)
            processWeatherData(response.data)
        }
        
        //imageURL = "https://curso-iniciantes-1.getsandbox.com/collectionView/programmingLanguages"
        
        //Nuke.loadImage(with: imageURL, into: imageView)
    }

    private func processWeatherData(data: Data) {
        do {
            if let JSON = try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary,
               let weatherData = WeatherData.from(JSON) {
                print(weatherData.name)
                print(weatherData.desc)
                print(weatherData.imageURL)
            }

        } catch {
            print("Unable to Initialize Weather Data")
        }
    }

}

