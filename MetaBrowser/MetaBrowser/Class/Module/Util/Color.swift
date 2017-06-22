//
//  Color.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/22.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import UIKit

public extension UIColor {
    
    /** 返回一张纯色图片 */
    public func image() -> UIImage {
        
        let rect = CGRect.init(x: 0, y: 0, width: 2, height: 2)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    /** 指定大小纯色图片 */
    public func image(with size: CGSize) -> UIImage {
        
        let rect = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    public class func color(with red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor
    {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    /** 生成随机颜色 */
    public class func randomColor() -> UIColor {
        
        let randomColor = UIColor.init(red: randomColorValue(), green: randomColorValue(), blue: randomColorValue(), alpha: 1.0)
        
        return randomColor
    }
    
    /** 生成随机颜色数值 */
    public class func randomColorValue() -> CGFloat {
        
        return CGFloat(arc4random_uniform(256))/255.0
    }
    
    // MARK:- 把#ffffff颜色转为UIColor
    public class func color(withHex hex:String, alpha: CGFloat) -> UIColor {
        
        var cString = hex.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            let index = cString.index(cString.startIndex, offsetBy:1)
            cString = cString.substring(from: index)
        }
        
        if (cString.characters.count != 6) {
            return UIColor.red
        }
        
        let rIndex = cString.index(cString.startIndex, offsetBy: 2)
        let rString = cString.substring(to: rIndex)
        let otherString = cString.substring(from: rIndex)
        let gIndex = otherString.index(otherString.startIndex, offsetBy: 2)
        let gString = otherString.substring(to: gIndex)
        let bIndex = cString.index(cString.endIndex, offsetBy: -2)
        let bString = cString.substring(from: bIndex)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
    }
    
    public convenience init(hexColor:Int, alpha: CGFloat) {
        let red = (hexColor >> 16) & 0xff
        let green = (hexColor >> 8) & 0xff
        let blue = hexColor & 0xff
        
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}
