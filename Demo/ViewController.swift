//
//  ViewController.swift
//  Demo
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfVowels(in string: String) -> Int {
        let vowels: [Character] = ["A", "E", "I", "O", "U",
                                   "a", "e", "i", "o", "u"]
        return string.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }
    
    func makeHeadline(from string: String) -> String {
        let words = string.components(separatedBy: " ")
        
        let headline = words.map {
            (word) -> String in
            var mutableWord = word
            let first = mutableWord.removeFirst()
            return String(first).uppercased() + mutableWord
        }
        return headline.joined(separator: " ")
    }

}

