//
//  FileManager+Extension.swift
//  sayar
//
//  Created by anwar on 04/12/1443 AH.
//

import Foundation


import UIKit

let fileName = ""

extension FileManager {
    static var docDirURL: URL {
        return Self.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    func docExist(named docName: String) -> Bool {
        fileExists(atPath: Self.docDirURL.appendingPathComponent(docName).path)
    }
}
