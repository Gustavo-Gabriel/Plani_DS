import XCTest

@testable import Plani_DS

final class SpacingTests: XCTestCase {
    func testValuesOfSpacings() {
        XCTAssertEqual(Spacing.xSmall, 5)
        XCTAssertEqual(Spacing.small, 10)
        XCTAssertEqual(Spacing.medium, 20)
        XCTAssertEqual(Spacing.large, 25)
        XCTAssertEqual(Spacing.xLarge, 30)
        XCTAssertEqual(Spacing.xxLarge, 40)
    }
}
