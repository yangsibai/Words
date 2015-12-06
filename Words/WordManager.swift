//
//  WordManager.swift
//  Words
//
//  Created by yangsibai on 15/12/6.
//  Copyright © 2015年 massimo. All rights reserved.
//

import UIKit

var wordMgr: WordManager = WordManager()

struct  word {
    var name: String = "default"
    var desc: String = "default"
}

class WordManager: NSObject {
    
    var words = [word]()
    func addNewWord(name: String, desc: String) {
        words.append(word(name: name, desc: desc))
    }
}