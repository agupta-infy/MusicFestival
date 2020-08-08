//
//  BandTableViewCell.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

import UIKit

class BandTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bandNameLabel: UILabel!
    @IBOutlet weak var recordNameLable: UILabel!
    @IBOutlet weak var festivalNameLable: UILabel!
    var musicModel: MusicFestivalModel?{
        didSet{
            userConfiguration()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func userConfiguration(){
//        let status = musicModel?.getStatusColor()
//        lblStatus.text = status?.0
//        backgroundColor = status?.1
//        if let id = modelUser?.id{
//            lblID.text = "\(id)"
//        }else{
//            lblID.text = "No ID"
//        }
//        lblTitle.text = modelUser?.title
    }
    
}
