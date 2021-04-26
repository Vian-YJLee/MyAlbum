//
//  AlbumViewController.swift
//  MyAlbum
//
//  Created by LeeYongJin on 2021/04/17.
//  Copyright © 2021 com.vianney. All rights reserved.
//

import UIKit
extension ViewController {
    
}

class AlbumViewController: UIViewController {
    
    @IBOutlet var shutdown: UIButton!
    //쓸어내리기로도 가능하지만 메인 화면으로 돌아가는 버튼 추가
    //UIStoryboardSegue class 사용법 상기..
    //protocol과 delegate사용해 데이터 주고받는 방법도 구현해보기
    @IBOutlet weak var down: UIButton!
    //다시한번
    
    var comprehend = 0
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gotIt()
        
    }
    
    @IBAction func Refresh(_ sender: Any) {
        
        let refresh = UIAlertController(title: "Test alert", message: "페이지 전환 테스트", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cencle = UIAlertAction(title: "취소", style: .default, handler: nil)
        refresh.addAction(confirm)
        refresh.addAction(cencle)
        //선택지 추가
        present(refresh, animated: true, completion: nil)
    }
    

    @IBAction func comprehensible(_ sender: UIButton) {
        
        let message = "String, variable \(comprehend)% 이해했다"
        let understnad = UIAlertController(title: "개념이해", message: message, preferredStyle: .alert)
        let underAciton = UIAlertAction(title: "Good", style: .default, handler: {underAction in self.gotIt() })
        //alert 창에 현재 Label값 전달하고, 확인 버튼 눌렀을 때 Label값 변경되도록 handler에 closer 추가햣
        
        understnad.addAction(underAciton)
        present(understnad, animated: true, completion: nil)
        
        
        /*
        let randomcompre = arc4random_uniform(100) + 1
        comprehend = Int(randomcompre)
        progressLabel.text = "진행도 \(comprehend)%"
        //랜덤한 값 출력해 라벨로 넘기기
        */
    }
    
    func gotIt() {
        let randomcompre = arc4random_uniform(100) + 1
        comprehend = Int(randomcompre)
        progressLabel.text = "진행도 \(comprehend)%"
        //랜덤값 출력 메서드.
    }
    
    

    @IBAction func alertFuncTest(_ sender: ViewController) {
        
        
        
        
        
    }
    
}
    

