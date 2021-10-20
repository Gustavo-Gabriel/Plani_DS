import XCTest
import SwiftUI

@testable import Plani_DS

@available(iOS 13, *)
final class ColorsTests: XCTestCase {
    func testTokenColorsLightValue() {
        XCTAssertEqual(Colors.blue100, Color(UIColor(named: "blue100")!))
        XCTAssertEqual(Colors.blue200, Color(Colors.colorOfDefault("blue200")))
        XCTAssertEqual(Colors.blue300, Color(Colors.colorOfDefault("blue300")))
        XCTAssertEqual(Colors.blue400, Color(Colors.colorOfDefault("blue400")))
        XCTAssertEqual(Colors.black, Color(Colors.colorOfDefault("black")))
    }
}
