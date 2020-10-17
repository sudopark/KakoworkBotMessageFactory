//
//  SelectBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct SelectBlock: BotMessageBlock {
    
    public struct Option {
        
        public let text: String
        public let value: String
        
        public init(text: String, value: String) {
            self.text = text
            self.value = value
        }
    }
    
    public let type: BotMessageBlockType = .select
    public var name: String
    public var options: [Option]
    public var required: Bool?
    public var placeHolder: String?
    
    public init(name: String, options: [Option], required: Bool? = nil, placeHolder: String? = nil) {
        self.name = name
        self.options = options
        self.required = required
        self.placeHolder = placeHolder
    }
}
