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
        var raw: RawColor

        if hex <= 0xFFF {
            raw = RainbowParsingUtils.parseHexLength3(hexValue: hex)
        } else if hex <= 0xFFFF {
            raw = RainbowParsingUtils.parseHexLength4(hexValue: hex)
        } else if hex <= 0xFFFFFF {
            raw = RainbowParsingUtils.parseHexLength6(hexValue: hex)
        } else if hex <= 0xFFFFFFFF {
            raw = RainbowParsingUtils.parseHexLength8(hexValue: hex)
        } else {
            return nil
        }

        self.init(raw: raw)
    }

    public convenience init?(hex: String) {
        let hexString = hex.starts(with: "#") ? String(hex.dropFirst()) : hex

        let scanner = Scanner(string: hexString)
        var hexValue: CUnsignedLongLong = 0

        guard scanner.scanHexInt64(&hexValue) else {
            return nil
        }
        let length = hexString.count

        var raw: RawColor
        switch length {
        case 3:
            raw = RainbowParsingUtils.parseHexLength3(hexValue: hexValue)
        case 4:
            raw = RainbowParsingUtils.parseHexLength4(hexValue: hexValue)
        case 6:
            raw = RainbowParsingUtils.parseHexLength6(hexValue: hexValue)
        case 8:
            raw = RainbowParsingUtils.parseHexLength8(hexValue: hexValue)
        default:
            return nil
        }

        self.init(raw: raw)
    }

    private convenience init(raw: RawColor) {
        self.init(red: raw.red, green: raw.green, blue: raw.blue, alpha: raw.alpha)
    }

    public var hex: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        if let color = usingColorSpace(.extendedSRGB) {
            color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        }

        var rgb = 0
        let redI = (Int)(red * 0xFF)
        let greenI = (Int)(green * 0xFF)
        let blueI = (Int)(blue * 0xFF)
        let alphaI = (Int)(alpha * 0xFF)

        if alpha == 1.0 {
            rgb = redI << 16
            rgb |= greenI << 8
            rgb |= blueI << 0

            return String(format: "#%06x", rgb)
        } else {
            rgb = redI << 24
            rgb |= greenI << 16
            rgb |= blueI << 8
            rgb |= alphaI << 0

            return String(format: "#%08x", rgb)
        }
    }
}
