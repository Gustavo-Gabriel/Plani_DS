import Quick
import Nimble
    
@testable import Plani_DS

final class Plani_DSTests: QuickSpec {
    override func spec() {
        var sut: Plani_DS!
        
        beforeEach {
            sut = Plani_DS()
        }
        
        describe("initial test case") {
            context("hello world") {
                it("plani_DS text is hello world") {
                    expect(sut.text).to(equal("Hello, World!"))
                }
            }
        }
    }
}
