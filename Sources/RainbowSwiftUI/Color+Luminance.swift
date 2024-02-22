import SwiftUI
import UIKit

@available(macOS 10.15, *)
public extension Color {
    /// Calculates the luminance based on the RGB components of the color
    ///
    /// Formula: `0.299 * R + 0.687 * G + 0.114 * B`
    ///
    /// - Returns: Luminance ("brightness") of color
    @available(macOS 11.0, iOS 14.0, *)
    func luminance() -> CGFloat {
        // SwiftUI is handling named colors differently, and the property `cgColor` is not always set.
        // Therefore, the SwiftUI.Color is converted to UIKit.UIColor
        let components = UIColor(self).cgColor.components ?? []
        guard !components.isEmpty else {
            return 0
        }
        guard components.count >= 3 else {
            return components[0]
        }
        return 0.299 * components[0] + 0.587 * components[1] + 0.114 * components[2]
    }
}
