import XCTest
@testable import MXKV

final class MXKVTests: XCTestCase {
    
    enum AppSettings {
        @MXStore("darkMode")
        static var darkMode: Bool
    }
    
    override func setUp() {
        AppSettings.$darkMode.unset()
    }
    
    func test_key() throws {
        XCTAssertEqual(AppSettings.$darkMode.scope, "AppSettings")
        XCTAssertEqual(AppSettings.$darkMode.name, "darkMode")
        XCTAssertEqual(AppSettings.$darkMode.key, "AppSettings.darkMode")
    }
    
    func test_set() throws {
        AppSettings.darkMode = true
        XCTAssertEqual(AppSettings.darkMode, true)
    }
    
    func test_unset() throws {
        XCTAssertEqual(AppSettings.$darkMode.isUnset, true)
        AppSettings.darkMode = false
        XCTAssertEqual(AppSettings.$darkMode.isUnset, false)
        AppSettings.$darkMode.unset()
        XCTAssertEqual(AppSettings.$darkMode.isUnset, true)
    }
    
}
