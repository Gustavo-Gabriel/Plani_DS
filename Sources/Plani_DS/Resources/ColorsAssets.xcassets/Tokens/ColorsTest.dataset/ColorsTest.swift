import XCTest
import SwiftUI

@testable import Plani_DS

@available(iOS 13, *)
final class ColorsTests: XCTestCase {
    @available(iOS 14.0, *)
    func testTokenColorsNotNil() {
        
        XCTAssertNotNil(Colors.blue100)
        XCTAssertNotEqual(Colors.blue100, Color.black)
        
        XCTAssertNotNil(Colors.blue200)
        XCTAssertNotEqual(Colors.blue200, Color.black)
        
        XCTAssertNotNil(Colors.blue300)
        XCTAssertNotEqual(Colors.blue300, Color.black)
        
        XCTAssertNotNil(Colors.blue400)
        XCTAssertNotEqual(Colors.blue400, Color.black)
        
        XCTAssertNotNil(Colors.purple200)
        XCTAssertNotEqual(Colors.purple200, Color.black)
        
        XCTAssertNotNil(Colors.purple300)
        XCTAssertNotEqual(Colors.purple300, Color.black)
        
        XCTAssertNotNil(Colors.orange100)
        XCTAssertNotEqual(Colors.orange100, Color.black)
        
        XCTAssertNotNil(Colors.orange300)
        XCTAssertNotEqual(Colors.orange300, Color.black)
        
        XCTAssertNotNil(Colors.gray100)
        XCTAssertNotEqual(Colors.gray100, Color.black)
        
        XCTAssertNotNil(Colors.gray200)
        XCTAssertNotEqual(Colors.gray200, Color.black)
        
        XCTAssertNotNil(Colors.gray300)
        XCTAssertNotEqual(Colors.gray300, Color.black)
        
        XCTAssertNotNil(Colors.gray400)
        XCTAssertNotEqual(Colors.gray400, Color.black)
        
        XCTAssertNotNil(Colors.gray500)
        XCTAssertNotEqual(Colors.gray500, Color.black)
        
        XCTAssertNotNil(Colors.gray600)
        XCTAssertNotEqual(Colors.gray600, Color.black)
        
        XCTAssertNotNil(Colors.black)
        XCTAssertEqual(Colors.black, Color.black)
        
        XCTAssertNotNil(Colors.white)
        XCTAssertNotEqual(Colors.white, Color.black)
    }
}
