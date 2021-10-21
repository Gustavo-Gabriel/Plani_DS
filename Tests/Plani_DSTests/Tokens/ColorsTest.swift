import XCTest
import SwiftUI

@testable import Plani_DS

@available(iOS 13, *)
final class ColorsTests: XCTestCase {
    func testTokenColorsNotNil() {
        XCTAssertNotNil(Colors.blue100)
        XCTAssertNotNil(Colors.blue200)
        XCTAssertNotNil(Colors.blue300)
        XCTAssertNotNil(Colors.blue400)
        
        XCTAssertNotNil(Colors.purple200)
        XCTAssertNotNil(Colors.purple300)
        
        XCTAssertNotNil(Colors.orange100)
        XCTAssertNotNil(Colors.orange300)
        
        XCTAssertNotNil(Colors.gray100)
        XCTAssertNotNil(Colors.gray200)
        XCTAssertNotNil(Colors.gray300)
        XCTAssertNotNil(Colors.gray400)
        XCTAssertNotNil(Colors.gray500)
        XCTAssertNotNil(Colors.gray600)
        
        XCTAssertNotNil(Colors.black)
        XCTAssertNotNil(Colors.white)
    }
}
