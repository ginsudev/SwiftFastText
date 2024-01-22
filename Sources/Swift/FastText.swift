//
//  FastText.swift
//
//
//  Created by Noah Little on 22/1/2024.
//

import Foundation
@_exported import ObjCFastText

public final class FastText {
    private let wrapper: FastTextWrapper
    
    public init(modelPath: URL) {
        self.wrapper = .init(model: modelPath)
    }
    
    public func nearbyWords(word: String) -> [String] {
        let arr = NSMutableArray()
        wrapper.nearbyWords(arr, forWord: word)
        return arr as? [String] ?? []
    }
}
