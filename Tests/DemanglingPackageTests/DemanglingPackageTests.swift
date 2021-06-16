    import XCTest
    import Demangling
    @testable import DemanglingPackage

    final class DemanglingPackageTests: XCTestCase {
        func testDemangle() {
            let mangled = "$s4test10returnsOptyxycSgxyScMYccSglF"
            let demangled = "test.returnsOpt<A>((@Swift.MainActor () -> A)?) -> (() -> A)?"
            let opts: DemangleOptions = .defaultOptions
            let result = mangled.demangling(opts) ?? ""
            XCTAssertEqual(result, demangled, "\n\(mangled) ---> \n\(result)\n\(demangled)")
        }

    }
