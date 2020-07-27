//
//  RainbowParsingUtils.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 27.06.2020.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

import CoreGraphics

/// Utility to parse color hex values into colors
internal class RainbowParsingUtils {

    internal static func parseHexLength3(hexValue: CUnsignedLongLong) -> RawColor {
        .init(
            red: CGFloat((hexValue & 0xF00) >> 8) / 0xF,
            green: CGFloat((hexValue & 0x0F0) >> 4) / 0xF,
            blue: CGFloat(hexValue & 0x00F)        / 0xF
        )
    }

    internal static func parseHexLength4(hexValue: CUnsignedLongLong) -> RawColor {
        .init(
            red: CGFloat((hexValue & 0xF000) >> 12) / 0xF,
            green: CGFloat((hexValue & 0x0F00) >> 8)  / 0xF,
            blue: CGFloat((hexValue & 0x00F0) >> 4)  / 0xF,
            alpha: CGFloat(hexValue & 0x000F)         / 0xF
        )
    }

    internal static func parseHexLength6(hexValue: CUnsignedLongLong) -> RawColor {
        .init(
            red: CGFloat((hexValue & 0xFF0000) >> 16) / 0xFF,
            green: CGFloat((hexValue & 0x00FF00) >> 8)  / 0xFF,
            blue: CGFloat(hexValue & 0x0000FF)         / 0xFF
        )
    }

    internal static func parseHexLength8(hexValue: CUnsignedLongLong) -> RawColor {
        .init(
            red: CGFloat((hexValue & 0xFF000000) >> 24) / 0xFF,
            green: CGFloat((hexValue & 0x00FF0000) >> 16) / 0xFF,
            blue: CGFloat((hexValue & 0x0000FF00) >> 8)  / 0xFF,
            alpha: CGFloat(hexValue & 0x000000FF)         / 0xFF
        )
    }
}
