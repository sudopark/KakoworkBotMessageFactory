//
//  InputBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct InputBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .input
    public var name: String
    public var placeHolder: String?
    public var requiredCheck: Bool?
    
    public init(name: String, placeHolder: String? = nil, requiredCheck: Bool? = nil) {
        self.name = name
        self.placeHolder = placeHolder
        self.requiredCheck = requiredCheck
    }
}
