//
//  FastText.swift
//
//
//  Created by Noah Little on 22/1/2024.
//

import Foundation
@_exported import ObjCFastText

final class FastText {
    private let wrapper: FastTextWrapper
    
    init(modelPath: URL) {
        self.wrapper = .init(model: modelPath)
    }
    
    func nearbyWords(word: String) -> [String] {
        var arr = NSMutableArray()
        wrapper.nearbyWords(arr, forWord: word)
        
        return [""]
    }
}
