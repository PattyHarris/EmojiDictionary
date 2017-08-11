//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Patty Harris on 8/10/17.
//  Copyright © 2017 Patty Harris. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    var emoji : String = ""
    var definition : String = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDetailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = self.emoji
        emojiDetailLabel.text = self.definition
    }
    


}
