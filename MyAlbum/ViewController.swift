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
    
    @IBAction func remind(_ sender: Any) {
        
        let PopUp = UIAlertController(title: "Swift", message: "다시한번 날아가볼래?", preferredStyle: .alert)
        let action = UIAlertAction(title: "Go!", style: .default, handler: nil)
        
        PopUp.addAction(action)
        present(PopUp, animated: true, completion: nil)
    }
    
    @IBAction func unwindmain (segue : UIStoryboardSegue) {
        //다른 ViewController에서 Main으로 돌아오기 위한 segue엑션
        
    }
}

