//
//  File.swift
//  
//
//  Created by JW_Macbook on 2021/04/16.
//
/*
 ViewController 접근 확인
 */

import UIKit

open class JWViewController: UIViewController {
    
    open override func viewDidLoad() {
        
    }
    
    /// 생성자 추가.
    open func instanse() -> JWViewController {
        let desc = JWViewController(nibName: "JWViewController", bundle: nil)
        return desc
    }
}
