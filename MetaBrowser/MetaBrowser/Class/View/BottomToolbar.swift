//
//  BottomBar.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/22.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import UIKit

class BottomToolbar: UIToolbar {
    
    typealias BackClosure = () -> Void
    typealias ForwardClosure = () -> Void
    typealias FunctionClosure = () -> Void
    typealias HomeClosure = () -> Void
    typealias PageClosure = () -> Void
    
    var backClosure: BackClosure?
    var forwardClosure:ForwardClosure?
    var functionClosure: FunctionClosure?
    var homeClosure: HomeClosure?
    var pageClosure: PageClosure?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let icon = MetaBrowserIcon.init(color: .black, size: 25)
        
        let spaceItem = UIBarButtonItem.init(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        let backItem = UIBarButtonItem.init(image: icon.image(code: MetaBrowserIcon.back), style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        let forwardItem = UIBarButtonItem.init(image: icon.image(code: MetaBrowserIcon.forward), style: UIBarButtonItemStyle.plain, target: self, action: #selector(goForward))
        let functionItem = UIBarButtonItem.init(image: icon.image(code: MetaBrowserIcon.function), style: UIBarButtonItemStyle.plain, target: self, action: #selector(touchFunction))
        let homeItem = UIBarButtonItem.init(image: icon.image(code: MetaBrowserIcon.home), style: UIBarButtonItemStyle.plain, target: self, action: #selector(touchHome))
        let pageItem = UIBarButtonItem.init(image: icon.image(code: MetaBrowserIcon.page), style: UIBarButtonItemStyle.plain, target: self, action: #selector(touchPage))
        
        self.items = [backItem, spaceItem, forwardItem, spaceItem, functionItem, spaceItem, homeItem, spaceItem, pageItem]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func whenGoBack(closure: @escaping BackClosure) {
        backClosure = closure
    }
    
    func whenGoForward(closure: @escaping ForwardClosure) {
        forwardClosure = closure
    }
    
    func whenTouchFunction(closure: @escaping FunctionClosure) {
        functionClosure = closure
    }
    
    func whenTouchHome(closure: @escaping HomeClosure) {
        homeClosure = closure
    }
    
    func whenTouchPage(closure: @escaping PageClosure) {
        pageClosure = closure
    }
    
    func goBack() {
        if let backClosure = self.backClosure {
            backClosure()
        }
    }
    
    func goForward() {
        if let forwardClosure = self.forwardClosure {
            forwardClosure()
        }
    }
    
    func touchFunction() {
        if let functionClosure = self.functionClosure {
            functionClosure()
        }
    }
    
    func touchHome() {
        if let homeClosure = self.homeClosure {
            homeClosure()
        }
    }
    
    func touchPage() {
        if let pageClosure = self.pageClosure {
            pageClosure()
        }
    }
}
