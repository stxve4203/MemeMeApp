//
//  MemeDetailViewController.swift
//  MemeMe 1.0
//
//  Created by Stefan Weiss on 03.02.22.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = meme.meme
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
}
