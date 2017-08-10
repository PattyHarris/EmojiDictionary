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
    
    var emojis = ["😀", "🤣", "👍", "👣", "🌈"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Added after creating the segue from the tableView to the Emoji Detail View Controller
    // 1. Ctrl + drag from the tableView to the detail VC.
    // 2. Use "show" segue
    // 3. Set the identifier of the segue (in this case, DetailSegue
    // Add this override function and use performSegue to segue to the Detail View Controller.
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailSegue", sender: nil)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]

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
