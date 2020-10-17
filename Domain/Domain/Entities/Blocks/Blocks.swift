//
//  Blocks.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


// MARK: BotMessageBlockType

public enum BotMessageBlockType: String {
    case text
    case imageLink = "image_link"
    case button
    case divider
    case header
    case action
    case description
    case section
    case context
    case label
    case input
    case select
}

extension BotMessageBlockType {
    
    public var isElementBlock: Bool {
        switch self {
        case .text, .imageLink, .button: return true
        default: return false
        }
    }
    
    public var isLayoutBlock: Bool {
        switch self {
        case .divider, .header, .action, .description, .section, .context: return true
        default: return false
        }
    }
    
    public var isModalBlock: Bool {
        switch self {
        case .label, .input, .select: return true
        default: return false
        }
    }
}


// MARK: BotMessageBlock

public protocol BotMessageBlock {
    
    var type: BotMessageBlockType { get }
}


typealias MutateBlock = (inout BotMessageBlock) -> Void


extension BotMessageBlock {
    
    public func mutated(_ mutating: (inout Self) -> Void) -> Self {
        var newValue = self
        mutating(&newValue)
        return newValue
    }
    
    public var isElementBlock: Bool {
        return self.type.isElementBlock
    }
    
    public var isLayoutBlock: Bool {
        return self.type.isLayoutBlock
    }
    
    public var isModalBlock: Bool {
        return self.type.isModalBlock
    }
}
