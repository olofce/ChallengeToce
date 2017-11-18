//
//  Utmaningar.swift
//  Challenge
//
//  Created by Tomas on 2017-11-18.
//  Copyright © 2017 ToceTwice. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

protocol DocumentSerializable{
    init?(dictionary:[String:Any])
}

struct Utmaning{
    
    var name:String
    var text:String
    
    var dictionary:[String:Any] {
        
        return [
            "name" : name,
            "text" : text
        ]
    }
} //End of struct

extension Utmaning : DocumentSerializable {
    init?(dictionary:[String:Any])  {
        guard let name = dictionary["name"] as? String,
            let text = dictionary["text"] as? String else {return nil}
        self.init(name: name, text: text)
    }
}
