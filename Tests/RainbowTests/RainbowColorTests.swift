import XCTest
@testable import Rainbow

final class RainbowColorTests: XCTestCase {

    func testHexConversion_stringValues_canBeInitalizedWithThreeDigitHex() {
        let color = RainbowColor(hex: "3F0")
        XCTAssertEqual(color, RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 1))
    }

    func testHexConersion_stringValues_canBeInitalizedWithFourDigitHex() {
        let color = RainbowColor(hex: "3F0C")
        XCTAssertEqual(color, RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 0.8))
    }

    func testHexConersion_stringValues_canBeInitalizedWithSixDigitHex() {
        let color = RainbowColor(hex: "FF00FF")
            XCTAssertEqual(color, RainbowColor.magenta)
    }

    func testHexConersion_stringValues_canBeInitalizedWithEightDigitHex() {
        let color = RainbowColor(hex: "FFFF0000")
                XCTAssertEqual(color, RainbowColor.yellow.withAlphaComponent(0.0))
    }

    func testHexConersion_stringValues_canNotBeInitalizedWithOtherLength() {
        XCTAssertNil(RainbowColor(hex: "1234567890"))
    }

    func testHexConersion_stringValues_canNotBeInitalizedWithInvalidHexadecimalCharacters() {
        XCTAssertNil(RainbowColor(hex: "%"))
    }

    func testHexConersion_integerValues_canBeInitalizedWithThreeDigitHex() {
        let color = RainbowColor(hex: 0x3F0)
        XCTAssertEqual(color, RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 1))
    }

    func testHexConersion_integerValues_canBeInitalizedWithFourDigitHex() {
        let color = RainbowColor(hex: 0x3F0C)
        XCTAssertEqual(color, RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 0.8))
    }

    func testHexConersion_integerValues_canBeInitalizedWithSixDigitHex() {
        let color = RainbowColor(hex: 0xFF00FF)
        XCTAssertEqual(color, RainbowColor.magenta)
    }

    func testHexConersion_integerValues_canBeInitalizedWithEightDigitHex() {
        let color = RainbowColor(hex: 0xFFFF0000)
        XCTAssertEqual(color, RainbowColor.yellow.withAlphaComponent(0.0))
    }

    func testHexConersion_integerValues_canNotBeInitalizedWithOtherLength() {
        XCTAssertNil(RainbowColor(hex: 0x1234567890))
    }

    func testHex_canBeConvertedToHexadecimalString() {
        XCTAssertEqual(RainbowColor.orange.hex, "#ff7f00")
        XCTAssertEqual(RainbowColor.orange.withAlphaComponent(0.5).hex, "#ff7f007f")
    }

}
