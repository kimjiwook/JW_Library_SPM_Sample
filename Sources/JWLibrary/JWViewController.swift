//
//  File.swift
//  
//
//  Created by JW_Macbook on 2021/04/16.
//
/*
 ViewController 접근 확인
 https://developer.apple.com/documentation/swift_packages/bundling_resources_with_a_swift_package
 // 처리
 https://useyourloaf.com/blog/add-resources-to-swift-packages/
 */

import UIKit

open class JWViewController: UIViewController {
    
    open override func viewDidLoad() {
        
    }
    
    /// 생성자 추가.
    open class func instanse() -> JWViewController {
        let desc = JWViewController(nibName: "JWViewController", bundle: nil)
        return desc
    }
}
