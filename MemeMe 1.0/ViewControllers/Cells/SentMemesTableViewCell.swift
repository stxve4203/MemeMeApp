//
//  SentMemesTableViewCell.swift
//  MemeMe 1.0
//
//  Created by Stefan Weiss on 03.02.22.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    @IBOutlet weak var memeLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
