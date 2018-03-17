//
//  DPColor.swift
//  DPStyle
//
//  Created by DancewithPeng on 2018/3/14.
//  Copyright © 2018年 dancewithpeng@gmail.com. All rights reserved.
//

import UIKit

// MARK: - Hex Handing
public extension UIColor {
    
    private convenience init?(hex: Int, alpha: CGFloat = 1) {
        
        guard 0x000000...0xFFFFFF ~= hex else {
            return nil
        }
        
        let red     = CGFloat((hex & 0xFF0000) >> 16)   / 255.0
        let green   = CGFloat((hex & 0x00FF00) >> 8)    / 255.0
        let blue    = CGFloat((hex & 0x0000FF) >> 0)    / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
    /// 返回16进制色值对应的颜色
    ///
    /// - Parameters:
    ///   - hex: 16进制颜色值
    ///   - alpha: 不透明度
    /// - Returns: 返回对应16进制色值的颜色
    public static func hex(_ hex: Int, alpha: CGFloat = 1) -> UIColor? {
        return UIColor(hex: hex, alpha: alpha)
    }
}
