//
//  Debug.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/22.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import Foundation

public func DEBUGPrint(_ item: Any) {
    #if Debug
        print("\(item)")
    #else
        
    #endif
}
