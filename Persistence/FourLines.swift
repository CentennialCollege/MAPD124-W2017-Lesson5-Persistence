//
//  FourLines.swift
//  Persistence
//
//  Created by Molly Maskrey on 7/18/16.
//  Copyright © 2016 MollyMaskrey. All rights reserved.
//  Modified by Tom Tsiliopoulos on 2/14/17.
//

import Foundation

class FourLines : NSObject, NSCoding, NSCopying {
    private static let linesKey = "linesKey"
    var lines:[String]?
    
    override init() {
    }
    
    required init?(coder aDecoder: NSCoder) {
        lines = aDecoder.decodeObject(forKey: FourLines.linesKey) as? [String]
    }
    func encode(with aCoder: NSCoder) {
        if let saveLines = lines {
            aCoder.encode(saveLines, forKey: FourLines.linesKey)
        }
    }
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = FourLines()
        if let linesToCopy = lines {
            var newLines = Array<String>()
            for line in linesToCopy {
                newLines.append(line)
            }
            copy.lines = newLines
        }
        return copy
    }
}


