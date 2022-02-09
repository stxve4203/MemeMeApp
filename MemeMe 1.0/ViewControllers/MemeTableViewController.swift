//
//  TableViewController.swift
//  MemeMe 1.0
//
//  Created by Stefan Weiss on 02.02.22.
//

import UIKit

class MemeTableViewController: UITableViewController {
    
    var allMemes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  allMemes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentMemesTableVCCell", for: indexPath) as? SentMemesTableViewCell
            let meme = allMemes[(indexPath as NSIndexPath).row]

            cell?.memeImageView.image = meme.meme
            cell?.memeLbl.text = meme.topText
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(140.0)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "MemeDetailVC") as! MemeDetailViewController
        detailController.meme = allMemes[(indexPath as NSIndexPath).row]
        navigationController?.pushViewController(detailController, animated: true)
    }
}
