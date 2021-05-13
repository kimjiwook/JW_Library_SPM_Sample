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
    
    // 블로그 글 이동 버튼
    @IBOutlet weak var btn01:UIButton!
    @IBOutlet weak var btn02:UIButton!
    @IBOutlet weak var btn03:UIButton!
    @IBOutlet weak var btn04:UIButton!
    @IBOutlet weak var btn05:UIButton!
    
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
        
        //#. 블로그 글 이동버튼
        self.btn01.addAction(UIAction(handler: { _ in
            // [SPM] 01. Swift Package Manager 둘러보기
            if let url = URL(string: "https://xodhks0113.blogspot.com/2021/03/spm-01-swift-package-manager.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }), for: .touchUpInside)
        
        self.btn02.addAction(UIAction(handler: { _ in
            // [SPM] 02. 외부 라이브러리 다운받기(삭제)
            if let url = URL(string: "https://xodhks0113.blogspot.com/2021/04/spm-02.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }), for: .touchUpInside)
        
        self.btn03.addAction(UIAction(handler: { _ in
            // [SPM] 03. SPM 직접 등록 및 업데이트
            if let url = URL(string: "https://xodhks0113.blogspot.com/2021/04/spm-03-spm.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }), for: .touchUpInside)
        
        self.btn04.addAction(UIAction(handler: { _ in
            // [SPM] 04. SPM 라이브러리 소스 접근 (resources, dependencies 사용)
            if let url = URL(string: "https://xodhks0113.blogspot.com/2021/04/spm-04-spm-resources-dependencies.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }), for: .touchUpInside)
        
        self.btn05.addAction(UIAction(handler: { _ in
            // [SPM] 05. SPM Private Git(GitLab), 폴더구조 변경 (회사 사용용도)
            if let url = URL(string: "https://xodhks0113.blogspot.com/2021/04/spm-05-spm-private-gitgitlab.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }), for: .touchUpInside)
        
        
        
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
