//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Patty Harris on 8/10/17.
//  Copyright © 2017 Patty Harris. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    var emoji : Emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDetailLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = self.emoji.emojiName
        emojiDetailLabel.text = self.emoji.emojiDefnition
        
        birthLabel.text = String("Birth Year: \(self.emoji.birthDate)")
        categoryLabel.text = String("Category: \(self.emoji.category)")
    }
    


}
