import Quick
import Nimble

@testable import Plani_DS

final class SpacingTests: QuickSpec{
    override func spec() {
        describe("xSmall") {
            it("return 5") {
                expect(Spacing.xSmall).to(equal(5))
            }
        }
    }
}
