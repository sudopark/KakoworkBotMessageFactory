//
//  TextBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct TextBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .text
    public var text: String
    public var markdown: Bool
    
    public init(text: String, markdown: Bool = false) {
        self.text = text
        self.markdown = markdown
    }
}
