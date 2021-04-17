//
//  AlbumViewController.swift
//  MyAlbum
//
//  Created by LeeYongJin on 2021/04/17.
//  Copyright © 2021 com.vianney. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
    
    @IBOutlet var shutdown: UIButton!
    //쓸어내리기로도 가능하지만 메인 화면으로 돌아가는 버튼 추가
    //UIStoryboardSegue class 사용법 상기..
    //protocol과 delegate사용해 데이터 주고받는 방법도 구현해보기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Refresh(_ sender: Any) {
        
        let refresh = UIAlertController(title: "Test alert", message: "페이지 전환 테스트", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        
        refresh.addAction(action)
        present(refresh, animated: true, completion: nil)
    }
    

        
    }
    

