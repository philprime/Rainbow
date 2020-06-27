//
//  RainbowColor.swift
//  Rainbow
//
//  Created by Philip Niedertscheider on 27.06.2020.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

#if os(iOS)
import UIKit

public typealias RainbowColor = UIColor
#elseif os(macOS)
import AppKit

public typealias RainbowColor = NSColor
#endif
