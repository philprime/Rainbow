//
//  RainbowColor+Hex.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 27.06.2020.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

import Foundation
import CoreGraphics

extension RainbowColor {

    public convenience init?(hex: UInt64) {
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        if hex <= 0xFFF {
            (r, g, b) = RainbowParsingUtils.parseHexLength3(hexValue: hex)
        } else if hex <= 0xFFFF {
            (r, g, b, a) = RainbowParsingUtils.parseHexLength4(hexValue: hex)
        } else if hex <= 0xFFFFFF {
            (r, g, b) = RainbowParsingUtils.parseHexLength6(hexValue: hex)
        } else if hex <= 0xFFFFFFFF {
            (r, g, b, a) = RainbowParsingUtils.parseHexLength8(hexValue: hex)
        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, alpha: a)
    }

    public convenience init?(hex: String) {
        let hexString = hex.starts(with: "#") ? String(hex.dropFirst()) : hex

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let scanner = Scanner(string: hexString)
        var hexValue: CUnsignedLongLong = 0

        guard scanner.scanHexInt64(&hexValue) else {
            return nil
        }
        let length = hexString.count

        switch length {
        case 3:
            (r, g, b) = RainbowParsingUtils.parseHexLength3(hexValue: hexValue)
        case 4:
            (r, g, b, a) = RainbowParsingUtils.parseHexLength4(hexValue: hexValue)
        case 6:
            (r, g, b) = RainbowParsingUtils.parseHexLength6(hexValue: hexValue)
        case 8:
            (r, g, b, a) = RainbowParsingUtils.parseHexLength8(hexValue: hexValue)
        default:
            return nil
        }

        self.init(red: r, green: g, blue: b, alpha: a)
    }

    public var hex: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        var rgb = 0
        let r_i = (Int)(r * 0xFF)
        let g_i = (Int)(g * 0xFF)
        let b_i = (Int)(b * 0xFF)
        let a_i = (Int)(a * 0xFF)

        if a == 1.0 {
            rgb = r_i << 16
            rgb |= g_i << 8
            rgb |= b_i << 0

            return String(format: "#%06x", rgb)
        } else {
            rgb = r_i << 24
            rgb |= g_i << 16
            rgb |= b_i << 8
            rgb |= a_i << 0

            return String(format: "#%08x", rgb)
        }
    }
}
