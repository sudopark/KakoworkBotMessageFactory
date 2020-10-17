//
//  ButtonBlock.swift
//  Domain
//
//  Created by Sudo.park on 2020/10/17.
//

import Foundation


public struct ButtonBlock: BotMessageBlock {
    
    public enum Style: String {
        case `default`
        case primary
        case danger
    }
    
    public enum ActionType: String {
        case openInAppBrowser   = "open_inapp_browser"
        case openSystemBrowser  = "open_system_browser"
        case openExternalApp    = "open_external_app"
        case callModal          = "call_modal"
    }
    
    public let type: BotMessageBlockType = .button
    public var text: String
    public var style: Style
    public var actionType: ActionType?
    public var actionName: String?
    public var value: String?
    
    
    public init(text: String, style: Style) {
        self.text = text
        self.style = style
        self.actionType = nil
        self.actionName = nil
        self.value = nil
    }
    
    public init(text: String, style: Style, actionType: ActionType,
                actionName: String? = nil, value: String? = nil) {
        self.text = text
        self.style = style
        self.actionType = actionType
        self.actionName = actionName
        self.value = value
    }
}
