//
//  ViewController.swift
//  MyAlbum
//
//  Created by LeeYongJin on 2021/04/14.
//  Copyright © 2021 com.vianney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func hello(_ sender: Any) {
        let alert = UIAlertController(title: "Hello", message: "My remind learning App", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

