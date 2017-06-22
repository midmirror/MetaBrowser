//
//  IconCode.swift
//  IconFont
//
//  Created by mellow on 2017/1/21.
//  Copyright © 2017年 HPRT. All rights reserved.
//

import UIKit

class UserIcon: NSObject {
    
    var color: UIColor = .black
    var size: CGFloat = 25
    var iconFontName = ""
    
    init(color aColor: UIColor, size: CGFloat, iconFontName: String) {
        super.init()
        self.color = aColor
        self.size = size
        self.iconFontName = iconFontName
    }
    
    func image(code: String) -> UIImage {
        return IconFont.init(code: code, size: size, fontName: iconFontName, color: color).imageSquare(size)
    }
}

class MetaBrowserIcon: UserIcon {
    
    static let back            = "\u{eb8b}"
    static let forward         = "\u{e66f}"
    static let function        = "\u{e638}"
    static let home            = "\u{e62c}"
    static let page            = "\u{e64e}"
    
    init(color aColor: UIColor, size: CGFloat) {
        super.init(color: aColor, size: size, iconFontName: "MetaBrowserIcon")
    }
    
    class func image(code: String, size: CGFloat, color: UIColor) -> UIImage {
        return IconFont.init(code: code, size: size, fontName: "MetaBrowserIcon", color: color).imageSquare(size)
    }
}
