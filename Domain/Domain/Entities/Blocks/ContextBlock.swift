//
//  ContextBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct ContextBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .context
    public var content: TextBlock
    public var image: ImageLinkBlock
    
    public init(content: TextBlock, image: ImageLinkBlock) {
        self.content = content
        self.image = image
    }
}
