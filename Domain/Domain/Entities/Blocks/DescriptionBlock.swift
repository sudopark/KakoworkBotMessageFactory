//
//  DescriptionBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct DescriptionBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .description
    public var term: String
    public var content: TextBlock
    public var accent: Bool
    
    public init(term: String, content: TextBlock, accent: Bool = false) {
        self.term = term
        self.content = content
        self.accent = accent
    }
}
