import SwiftUI
import XCTest
@testable import RainbowSwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
class Color_LuminanceTests: XCTestCase {

    func testLuminance_dynamicColor_shouldReturnLuminance() {
        // Act
        let luminance = Color("luminance-test-color", bundle: Bundle.module)
        // Assert
        XCTAssertEqual(luminance.luminance(), 0.704, accuracy: 0.01)
    }

    func testLuminance_grayscaleColor_shouldReturnLuminance() {
        // Act
        let luminance = Color(cgColor: CGColor(gray: 0.3, alpha: 1.0))
        // Assert
        XCTAssertEqual(luminance.luminance(), 0.3, accuracy: 0.01)
    }

    func testLuminance_rgbColor_shouldReturnLuminance() {
        // Act
        let luminance = Color(.sRGB, red: 0.5, green: 0.8, blue: 0.2)
        // Assert
        XCTAssertEqual(luminance.luminance(), 0.6419, accuracy: 0.00001)
    }
}
