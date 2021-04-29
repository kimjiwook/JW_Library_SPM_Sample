//
//  File.swift
//  
//
//  Created by JW_Macbook on 2021/04/16.
//
/*
 ViewController 접근 확인
 https://developer.apple.com/documentation/swift_packages/bundling_resources_with_a_swift_package
 // 처리 주소
 http://minsone.github.io/programming/bundling-resources-with-a-swift-package
 */

import UIKit
import SnapKit // 드디어 import 됨.

open class JWViewController: UIViewController {
    
    var tempLabel:UILabel? = nil
    
    open override func viewDidLoad() {
        self.initDzViews()
    }
    
    /// 생성자 추가.
    open class func instanse() -> JWViewController {
        let desc = JWViewController(nibName: "JWViewController", bundle: .module)
        return desc
    }
}

extension JWViewController: JWViewProtocol {
    public func initDzViews() {
        
        // View 단 생성
        if nil == tempLabel {
            self.tempLabel = UILabel()
            self.tempLabel?.textColor = .black
            self.tempLabel?.text = "SnapKit 테스트 용도 라벨!!"
            self.view.addSubview(self.tempLabel!)
        }
        
        // 오토레이아웃 설정
        self.updateDzViews()
    }
    
    public func updateDzViews() {
        tempLabel?.snp.remakeConstraints({ (make) in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(40)
        })
    }
    
    public func setDzNavigationViews() {
        
    }
    
    public func doDzBackAction() {
        
    }
    
    
}
