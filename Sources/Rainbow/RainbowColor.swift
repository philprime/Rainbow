//
//  RainbowColor.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 27.06.2020.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

#if os(iOS)
import UIKit

/// On iOS the used implementation is `UIColor` from UIKit
public typealias RainbowColor = UIColor
#elseif os(macOS)
import AppKit

/// On macos the used implementation is `NSColor` from AppKit
public typealias RainbowColor = NSColor
#endif
