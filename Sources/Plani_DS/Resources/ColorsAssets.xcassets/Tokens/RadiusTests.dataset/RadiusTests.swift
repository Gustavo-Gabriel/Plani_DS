import XCTest

@testable import Plani_DS

final class RadiusTests: XCTestCase {
    func testValuesOfRadius() {
        XCTAssertEqual(Radius.small, 5)
        XCTAssertEqual(Radius.medium, 10)
        XCTAssertEqual(Radius.large, 20)
    }
}

