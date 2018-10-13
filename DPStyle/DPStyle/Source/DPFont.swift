//
//  DPFont.swift
//  DPStyle
//
//  Created by DancewithPeng on 2018/3/14.
//  Copyright © 2018年 dancewithpeng@gmail.com. All rights reserved.
//

import UIKit.UIFont


// MARK: - 返回各种字重的UIFont便捷方法
public extension UIFont {
    
    /// 标准体
    public static func regular(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    /// 超轻体
    public static func ultraLight(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .ultraLight)
    }
    
    /// 细体
    public static func thin(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .thin)
    }
    
    /// 轻体
    public static func light(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .light)
    }
    
    /// 中体
    public static func medium(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .medium)
    }
    
    /// 半粗体
    public static func semibold(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .semibold)
    }
    
    /// 粗体
    public static func bold(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .bold)
    }
    
    /// 重体
    public static func heavy(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .heavy)
    }
    
    /// 黑体
    public static func black(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .black)
    }
}


// MARK: - 返回标准体字重的便捷方法
public extension UIFont {
    
    /// 返回对应字号的系统字体，字重为标准体
    ///
    /// - Parameter size: 对应的字号
    /// - Returns: 返回对应字号的系统字体，字重为标准体
    public static func size(_ size: CGFloat) -> UIFont {
        return regular(size: size)
    }
}

