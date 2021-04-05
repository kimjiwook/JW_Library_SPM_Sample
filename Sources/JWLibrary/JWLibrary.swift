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
class JWUtil {
    /// 싱글턴 객체
    public static let shared = JWUtil()
    
    /// UUID 가져오기
    /// - Returns: String
    func getUUID() -> String {
        return ""
    }
}
