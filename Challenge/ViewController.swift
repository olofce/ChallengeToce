//
//  ViewController.swift
//  Challenge
//
//  Created by Tomas on 2017-11-18.
//  Copyright © 2017 ToceTwice. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {

    var db:Firestore!
    var utmaningsArray = [Utmaning]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        db = Firestore.firestore()
        
        let newChallenge = Utmaning(name: "Olof", text: "Utmaning")
        
        var ref:DocumentReference? = nil
        ref = self.db.collection("Utmaningar").addDocument(data: newChallenge.dictionary){
            
            error in
            
            if let error = error {
                
                print("error adding to db")
            }else { print ("doc added")
            }
            
            
            }
            
            
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

