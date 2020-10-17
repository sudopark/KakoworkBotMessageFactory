//
//  SectionBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct SectionBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .section
    public let content: TextBlock
    public let accessory: ImageLinkBlock
    
    
    public init(content: TextBlock, accessory: ImageLinkBlock) {
        self.content = content
        self.accessory = accessory
    }
}
