import UIKit

struct JWLibrary {
    var text = "Hello, World!"
}

/// 1. 프로토콜 규약 추가
public protocol JWViewProtocol {
    /// 1. View 생성 및 초기값 관련
    func initDzViews()
    /// 2. View 생성 후 업데이트 관련
    func updateDzViews()
    /// 3. 네비게이션 셋팅시 사용됨
    func setDzNavigationViews()
    /// 4. 뒤로가기 액션
    func doDzBackAction()
}

/// 2. Util 성 Class 추가
open class JWUtil {
    /// 싱글턴 객체
    public static let shared = JWUtil()
    
    // 변수 테스트
    public let jwText1 = "public 접근"
    let jwText2 = "일반 접근"
    
    /// UUID 가져오기
    /// - Returns: String
    public func getUUID() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
    /// func으로는 ? 접근되나
    func getTemp() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
}
