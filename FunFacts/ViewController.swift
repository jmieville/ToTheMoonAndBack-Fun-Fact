//
//  ViewController.swift
//  FunFacts
//
//  Created by Jean-Marc Kampol Mieville on 5/8/2559 BE.
//  Copyright © 2559 Jean-Marc Kampol Mieville. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    
    
    @IBOutlet weak var FunFactButton: UIButton!
    
    
    
    let factModel = FactModel()
    let colorModel = ColorModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        FunFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
        
        
    }

}

struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag)"
    }
}

let classic = Tag(name: "classic")

let firstPost = Post(title: "Animal Farm", author: "George Orwell", tag: classic)

let postDescription = firstPost.description()


