import Rainbow
import SwiftUI

@available(macOS 10.15, *)
public extension Color {
    /// Calculates the luminance based on the RGB components of the color
    ///
    /// Formula: `0.299 * R + 0.687 * G + 0.114 * B`
    ///
    /// - Returns: Luminance ("brightness") of color
    @available(macOS 11.0, iOS 14.0, *)
    func luminance() -> CGFloat {
        RainbowColor(self).luminance()
    }
}
