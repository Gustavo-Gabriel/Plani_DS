import XCTest
import SwiftUI

@testable import Plani_DS

@available(iOS 14, *)
final class ColorsTests: XCTestCase {
    func testTokenColorsAreRight() {
        
        XCTAssertNotNil(Colors.blue100)
        XCTAssertFalse(Colors.blue100.isEqualTo(Color.clear))
        XCTAssert(Colors.blue100.isEqualTo(Colors.colorWithName("blue100")))
        
        XCTAssertNotNil(Colors.blue200)
        XCTAssertFalse(Colors.blue200.isEqualTo(Color.clear))
        XCTAssert(Colors.blue200.isEqualTo(Colors.colorWithName("blue200")))
        
        XCTAssertNotNil(Colors.blue300)
        XCTAssertFalse(Colors.blue300.isEqualTo(Color.clear))
        XCTAssert(Colors.blue300.isEqualTo(Colors.colorWithName("blue300")))
        
        XCTAssertNotNil(Colors.blue400)
        XCTAssertFalse(Colors.blue400.isEqualTo(Color.clear))
        XCTAssert(Colors.blue400.isEqualTo(Colors.colorWithName("blue400")))
        
        XCTAssertNotNil(Colors.purple200)
        XCTAssertFalse(Colors.purple200.isEqualTo(Color.clear))
        XCTAssert(Colors.purple200.isEqualTo(Colors.colorWithName("purple200")))
        
        XCTAssertNotNil(Colors.purple300)
        XCTAssertFalse(Colors.purple300.isEqualTo(Color.clear))
        XCTAssert(Colors.purple300.isEqualTo(Colors.colorWithName("purple300")))
        
        XCTAssertNotNil(Colors.orange100)
        XCTAssertFalse(Colors.orange100.isEqualTo(Color.clear))
        XCTAssert(Colors.orange100.isEqualTo(Colors.colorWithName("orange100")))
        
        XCTAssertNotNil(Colors.orange300)
        XCTAssertFalse(Colors.orange300.isEqualTo(Color.clear))
        XCTAssert(Colors.orange300.isEqualTo(Colors.colorWithName("orange300")))
        
        XCTAssertNotNil(Colors.gray100)
        XCTAssertFalse(Colors.gray100.isEqualTo(Color.clear))
        XCTAssert(Colors.gray100.isEqualTo(Colors.colorWithName("gray100")))
        
        XCTAssertNotNil(Colors.gray200)
        XCTAssertFalse(Colors.gray200.isEqualTo(Color.clear))
        XCTAssert(Colors.gray200.isEqualTo(Colors.colorWithName("gray200")))
        
        XCTAssertNotNil(Colors.gray300)
        XCTAssertFalse(Colors.gray300.isEqualTo(Color.clear))
        XCTAssert(Colors.gray300.isEqualTo(Colors.colorWithName("gray300")))
        
        XCTAssertNotNil(Colors.gray400)
        XCTAssertFalse(Colors.gray400.isEqualTo(Color.clear))
        XCTAssert(Colors.gray400.isEqualTo(Colors.colorWithName("gray400")))
        
        XCTAssertNotNil(Colors.gray500)
        XCTAssertFalse(Colors.gray500.isEqualTo(Color.clear))
        XCTAssert(Colors.gray500.isEqualTo(Colors.colorWithName("gray500")))
        
        XCTAssertNotNil(Colors.gray600)
        XCTAssertFalse(Colors.gray600.isEqualTo(Color.clear))
        XCTAssert(Colors.gray600.isEqualTo(Colors.colorWithName("gray600")))
        
        XCTAssertNotNil(Colors.black)
        XCTAssertFalse(Colors.black.isEqualTo(Color.clear))
        XCTAssert(Colors.black.isEqualTo(Colors.colorWithName("black")))
        
        XCTAssertNotNil(Colors.white)
        XCTAssertFalse(Colors.white.isEqualTo(Color.clear))
        XCTAssert(Colors.white.isEqualTo(Colors.colorWithName("white")))
    }
}
