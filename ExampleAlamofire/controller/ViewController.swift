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
    
    let titleView: UILabel = {
        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red

        return label
    }()

    //MARK: LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(titleView)

        NSLayoutConstraint.activate([
            titleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])

        LanguagesAPI().getLanguages() { (name) in // 1
            self.titleView.text = name // 2
        }
        
        //LanguagesAPI().onGetLanguages()
    }
    
    //MARK: METHODS
    

}
