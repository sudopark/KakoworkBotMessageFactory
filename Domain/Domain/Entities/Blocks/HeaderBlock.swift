//
//  HeaderBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct HeaderBlock: BotMessageBlock {
    
    public enum Color: String {
        case blue
        case red
        case yellow
    }
    
    public let type: BotMessageBlockType = .header
    public var text: String
    public var color: Color
    
    
    public init(text: String, color: Color) {
        self.text = text
        self.color = color
    }
}
