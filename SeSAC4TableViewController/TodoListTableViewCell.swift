//
//  TodoListTableViewCell.swift
//  SeSAC4TableViewController
//
//  Created by Minho on 1/8/24.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {

    @IBOutlet weak var leftTitleImage: UIImageView!
    @IBOutlet weak var rightTitleImage: UIImageView!
    @IBOutlet weak var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
