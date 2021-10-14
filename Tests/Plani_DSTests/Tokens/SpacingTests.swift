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

        describe("small") {
            it("return 10") {
                expect(Spacing.small).to(equal(10))
            }
        }

        describe("medium") {
            it("return 20") {
                expect(Spacing.medium).to(equal(20))
            }
        }
        
        describe("medium") {
            it("return 20") {
                expect(Spacing.medium).to(equal(20))
            }
        }
        
        describe("large") {
            it("return 25") {
                expect(Spacing.large).to(equal(25))
            }
        }
        
        describe("xLarge") {
            it("return 30") {
                expect(Spacing.xLarge).to(equal(30))
            }
        }
        
        describe("xxLarge") {
            it("return 40") {
                expect(Spacing.xxLarge).to(equal(40))
            }
        }
    }
}
