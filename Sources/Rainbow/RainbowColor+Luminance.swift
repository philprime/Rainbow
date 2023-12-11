//
//  RainbowColor+Luminance.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 11.12.2023.
//  Copyright © 2023 Philip Niedertscheider <opensource@philprime.dev>. All rights reserved.
//

import CoreGraphics

public extension RainbowColor {
    /// Calculates the luminance based on the RGB components of the color
    ///
    /// Formula: `0.299 * R + 0.687 * G + 0.114 * B`
    ///
    /// - Returns: Luminance ("brightness") of color
    func luminance() -> CGFloat {
        guard let components = cgColor.components, !components.isEmpty else {
            return 0
        }
        guard components.count >= 3 else {
            return components[0]
        }
        return 0.299 * components[0] + 0.587 * components[1] + 0.114 * components[2]
    }
}
