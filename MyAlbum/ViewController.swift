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

    @IBAction func alertFunc(_ sender: UIButton) {
        let stringMSG = """
        단순 알림창 반복시 사용할 함수 동작 확인
        이게 보인다면 잘 돌아가는거겠지
        """
        makeAlert(title: "알림창 생성 함수 Test", message: stringMSG, confirmAction: {
            print("확인!")
        }) {
            print("취소!")
        }
        //파라미터로 () -> () 전달이기 때문에 closer '~ in ~' 생략
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
        //다른 ViewController에서 Main으로 돌아오기 위한 segue
        
    }
    
    //알림창 기능 반복적으로 사용할때 사용할 함수
    
    func makeAlert(title: String? = nil, message: String, confirm: String? =  nil, cancel: String? = nil, confirmAction: (() -> ())? = nil, cancleAction: (()-> ())? = nil) {
        //confirmAlction, cancleAciton 파라미터 추가
        //아무 동작도 하지 않을 경우 대비, 각 파라미터 옵셔널 처리
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .default) { (aciton) in
            if let action = confirmAction {
                action()
                //동작 없을 경우 대비 옵셔널 바인딩 처리
            }
            //action type으로 파라미터를 넘기는 closer
            
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) {(action) in
            if let action = cancleAction {
                action()
        }
    }
        alert.addAction(cancel)
        alert.addAction(confirm)
        present(alert, animated: true, completion: nil)
}
    

    
}

