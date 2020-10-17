//
//  ActionBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct ActionBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .action
    public var elements: [ButtonBlock]
    
    
    public init(elements: [ButtonBlock]) {
        self.elements = elements
    }
}
