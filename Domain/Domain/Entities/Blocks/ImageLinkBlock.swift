//
//  ImageLinkBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct ImageLinkBlock: BotMessageBlock {
    
    public let type: BotMessageBlockType = .imageLink
    public var url: String
    
    
    public init(url: String) {
        self.url = url
    }
}
