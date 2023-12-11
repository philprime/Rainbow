//
//  RainbowColor+Luminance.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 11.12.2023.
//  Copyright © 2023 Philip Niedertscheider <opensource@philprime.dev>. All rights reserved.
//

import CoreGraphics

public extension RainbowColor {
    func luminance() -> CGFloat {
        guard let rgbColor = cgColor.components, !rgbColor.isEmpty else {
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
