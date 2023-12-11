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
        guard let rgbColor = cgColor?.components, !rgbColor.isEmpty else {
            return 0
        }
        guard rgbColor.count >= 3 else {
            return rgbColor[0]
        }
        let r = rgbColor[0]
        let g = rgbColor[1]
        let b = rgbColor[2]
        // Standard formula to calculate luminance
        return 0.299 * r + 0.587 * g + 0.114 * b
    }
}
