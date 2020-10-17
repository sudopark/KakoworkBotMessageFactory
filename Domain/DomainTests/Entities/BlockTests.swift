//
//  BlockTests.swift
//  DomainTests
//
//  Created by Sudo.park on 2020/10/17.
//

import XCTest

@testable import Domain


class BlockTests: XCTestCase {
    
    var text: TextBlock!
    var imageLink: ImageLinkBlock!
    var button: ButtonBlock!
    var divider: DividerBlock!
    var header: HeaderBlock!
    var action: ActionBlock!
    var descriptionBlock: DescriptionBlock!
    var section: SectionBlock!
    var context: ContextBlock!
    var label: LabelBlock!
    var input: InputBlock!
    var select: SelectBlock!
    
    override func setUp() {
        super.setUp()
        self.text = .init(text: "")
        self.imageLink = .init(url: "")
        self.button = .init(text: "", style: .danger)
        self.divider = .init()
        self.header = .init(text: "", color: .blue)
        self.action = .init(elements: [])
        self.descriptionBlock = .init(term: "", content: self.text)
        self.section = .init(content: self.text, accessory: self.imageLink)
        self.context = .init(content: self.text, image: self.imageLink)
        self.label = .init(text: "")
        self.input = .init(name: "")
        self.select = .init(name: "", options: [])
    }
    
    override func tearDown() {
        super.tearDown()
        self.text = nil
        self.imageLink = nil
        self.button = nil
        self.divider = nil
        self.header = nil
        self.action = nil
        self.descriptionBlock = nil
        self.section = nil
        self.context = nil
        self.label = nil
        self.input = nil
        self.select = nil
    }
}


// MARK: - Test block mutating

extension BlockTests {
    
    func testBlock_mutating() {
        // given
        let oldValue = TextBlock(text: "old value")
        
        // when
        let newValue = oldValue.mutated {
            $0.text = "new value"
            $0.markdown = true
        }
        // then
        XCTAssertEqual(newValue.text, "new value")
        XCTAssertEqual(newValue.markdown, true)
    }
    
    func testblock_elementTypes() {
        XCTAssertEqual(self.text.isElementBlock, true)
        XCTAssertEqual(self.imageLink.isElementBlock, true)
        XCTAssertEqual(self.button.isElementBlock, true)
        XCTAssertEqual(self.divider.isElementBlock, false)
        XCTAssertEqual(self.header.isElementBlock, false)
        XCTAssertEqual(self.action.isElementBlock, false)
        XCTAssertEqual(self.descriptionBlock.isElementBlock, false)
        XCTAssertEqual(self.section.isElementBlock, false)
        XCTAssertEqual(self.context.isElementBlock, false)
        XCTAssertEqual(self.label.isElementBlock, false)
        XCTAssertEqual(self.input.isElementBlock, false)
        XCTAssertEqual(self.select.isElementBlock, false)
    }
    
    func testblock_LayoutTypes() {
        XCTAssertEqual(self.text.isLayoutBlock, false)
        XCTAssertEqual(self.imageLink.isLayoutBlock, false)
        XCTAssertEqual(self.button.isLayoutBlock, false)
        XCTAssertEqual(self.divider.isLayoutBlock, true)
        XCTAssertEqual(self.header.isLayoutBlock, true)
        XCTAssertEqual(self.action.isLayoutBlock, true)
        XCTAssertEqual(self.descriptionBlock.isLayoutBlock, true)
        XCTAssertEqual(self.section.isLayoutBlock, true)
        XCTAssertEqual(self.context.isLayoutBlock, true)
        XCTAssertEqual(self.label.isLayoutBlock, false)
        XCTAssertEqual(self.input.isLayoutBlock, false)
        XCTAssertEqual(self.select.isLayoutBlock, false)
    }
    
    func testblock_ModalTypes() {
        XCTAssertEqual(self.text.isModalBlock, false)
        XCTAssertEqual(self.imageLink.isModalBlock, false)
        XCTAssertEqual(self.button.isModalBlock, false)
        XCTAssertEqual(self.divider.isModalBlock, false)
        XCTAssertEqual(self.header.isModalBlock, false)
        XCTAssertEqual(self.action.isModalBlock, false)
        XCTAssertEqual(self.descriptionBlock.isModalBlock, false)
        XCTAssertEqual(self.section.isModalBlock, false)
        XCTAssertEqual(self.context.isModalBlock, false)
        XCTAssertEqual(self.label.isModalBlock, true)
        XCTAssertEqual(self.input.isModalBlock, true)
        XCTAssertEqual(self.select.isModalBlock, true)
    }
}
