//
//  DPFont.swift
//  DPStyle
//
//  Created by DancewithPeng on 2018/3/14.
//  Copyright © 2018年 dancewithpeng@gmail.com. All rights reserved.
//

import UIKit


/// 字重，为了封装size方法
public class DPWeight {
    
    /// 对应的UIFont的字重
    private let weight: UIFont.Weight
    
    /// 初始化方法，根据UIFont字重来初始化
    ///
    /// - Parameter weight: UIFont的字重
    init(weight: UIFont.Weight) {
        self.weight = weight
    }
    
    /// 返回对应字号的系统字体
    ///
    /// - Parameter size: 字号
    /// - Returns: 返回对应字号的系统字体
    public func size(_ size: CGFloat) -> UIFont {        
        return UIFont.systemFont(ofSize: size, weight: weight)
    }
}


// MARK: - 对应的字重
public extension UIFont {
    
    /// 标准体
    public static let regular       = DPWeight(weight: .regular)
    
    /// 超轻体
    public static let ultraLight    = DPWeight(weight: .ultraLight)
    
    /// 细体
    public static let thin          = DPWeight(weight: .thin)
    
    /// 轻体
    public static let light         = DPWeight(weight: .light)
    
    /// 中体
    public static let medium        = DPWeight(weight: .medium)
    
    /// 半粗体
    public static let semibold      = DPWeight(weight: .semibold)
    
    /// 粗体
    public static let bold          = DPWeight(weight: .bold)
    
    /// 重体
    public static let heavy         = DPWeight(weight: .heavy)
    
    /// 黑体
    public static let black         = DPWeight(weight: .black)
    
    public static func medium(size: CGFloat) -> UIFont {
        return medium.size(size)
    }
}


// MARK: - 返回标准体字重的便捷方法
public extension UIFont {
    
    /// 返回对应字号的系统字体，字重为标准体
    ///
    /// - Parameter size: 对应的字号
    /// - Returns: 返回对应字号的系统字体，字重为标准体
    public static func size(_ size: CGFloat) -> UIFont {
        return regular.size(size)
    }
}

