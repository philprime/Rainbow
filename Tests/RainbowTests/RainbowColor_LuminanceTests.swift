@testable import Rainbow
import SwiftUI
import XCTest

class RainbowColor_LuminanceTests: XCTestCase {
    func testLuminance_grayscaleColor_shouldReturnLuminance() {
        // Act
        let color = RainbowColor(white: 0.3, alpha: 1.0)
        // Assert
        XCTAssertEqual(color.luminance(), 0.3)
    }

    func testLuminance_rgbColor_shouldReturnLuminance() {
        // Act
        let color = RainbowColor(red: 0.5, green: 0.8, blue: 0.2, alpha: 1.0)
        // Assert
        XCTAssertEqual(color.luminance(), 0.6419, accuracy: 0.000001)
    }
}
