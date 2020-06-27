//
//  RainbowParsingUtils.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 27.06.2020.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

import CoreGraphics

internal class RainbowParsingUtils {

    internal static func parseHexLength3(hexValue: CUnsignedLongLong) -> (r: CGFloat, g: CGFloat, b: CGFloat) {
        return (
            r: CGFloat((hexValue & 0xF00) >> 8) / 0xF,
            g: CGFloat((hexValue & 0x0F0) >> 4) / 0xF,
            b: CGFloat(hexValue & 0x00F)        / 0xF
        )
    }

    internal static func parseHexLength4(hexValue: CUnsignedLongLong) -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        return (
            r: CGFloat((hexValue & 0xF000) >> 12) / 0xF,
            g: CGFloat((hexValue & 0x0F00) >> 8)  / 0xF,
            b: CGFloat((hexValue & 0x00F0) >> 4)  / 0xF,
            a: CGFloat(hexValue & 0x000F)         / 0xF
        )
    }

    internal static func parseHexLength6(hexValue: CUnsignedLongLong) -> (r: CGFloat, g: CGFloat, b: CGFloat) {
        return (
            r: CGFloat((hexValue & 0xFF0000) >> 16) / 0xFF,
            g: CGFloat((hexValue & 0x00FF00) >> 8)  / 0xFF,
            b: CGFloat(hexValue & 0x0000FF)         / 0xFF
        )
    }

    internal static func parseHexLength8(hexValue: CUnsignedLongLong) -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        return (
            r: CGFloat((hexValue & 0xFF000000) >> 24) / 0xFF,
            g: CGFloat((hexValue & 0x00FF0000) >> 16) / 0xFF,
            b: CGFloat((hexValue & 0x0000FF00) >> 8)  / 0xFF,
            a: CGFloat(hexValue & 0x000000FF)         / 0xFF
        )
    }
}
