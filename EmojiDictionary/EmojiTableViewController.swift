//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Patty Harris on 8/10/17.
//  Copyright © 2017 Patty Harris. All rights reserved.
//

// NOTE: This has to be embedded in a Navigation Controller in order
// for the "Back" button to appear on the Detail View Controller.

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []
    
    var names = ["🌸", "😀", "🤣", "👍", "👣", "🌈"]

    var definitions = ["Cherry blossom",
                       "Grinning face",
                       "Rolling on the floor laughing face",
                       "Thumbs up",
                       "Footprint",
                       "Rainbow"]
    var birthDates = [2010, 2010, 2010, 2015, 2008, 2005]
    
    var categories = ["Animals and Nature",
                      "Smileys and People",
                      "Smileys and People",
                      "Smileys and People",
                      "Smileys and People",
                      "Animals and Nature"]

    func createEmojis() -> [Emoji] {
        
        var emojiList : [Emoji] = []
        var count = names.count
        
        for index in 0..<count {
            let emoji : Emoji = Emoji()
            emoji.emojiName = names[index]
            emoji.birthDate = birthDates[index]
            emoji.emojiDefnition = definitions[index]
            emoji.category = categories[index]
            
            count += 1
            
            emojiList.append(emoji)
            
        }
        
        return emojiList
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emojis = self.createEmojis()

    }
    
    // MARK: - Navigation
    
    // This is called before the call to peformSegue below.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        let emojiDetailVC = segue.destination as! EmojiDetailViewController
        
        // Pass the selected object to the new view controller.  Again, Nick wanted you
        // to create a big if then else inside the Detail VC where you would compare the
        // emoji to determine the definition.
        let emojiDetail = sender as! Emoji
        emojiDetailVC.emoji = emojiDetail
    }

    // Added after creating the segue from the tableView to the Emoji Detail View Controller
    // 1. Ctrl + drag from the tableView to the detail VC.
    // 2. Use "show" segue
    // 3. Set the identifier of the segue (in this case, DetailSegue
    // Add this override function and use performSegue to segue to the Detail View Controller.
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Pass in the current selection - handled above in prepare.  I handled this as a struct
        // whereas the class wanted it as a if then else check in the detail VC.
        let emojiDetail : Emoji = Emoji()
        emojiDetail.emojiName = emojis[indexPath.row].emojiName
        emojiDetail.emojiDefnition = emojis[indexPath.row].emojiDefnition
        emojiDetail.birthDate = emojis[indexPath.row].birthDate
        emojiDetail.category = emojis[indexPath.row].category
        
        performSegue(withIdentifier: "DetailSegue", sender: emojiDetail)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row].emojiName

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
