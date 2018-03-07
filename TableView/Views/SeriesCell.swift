//
//  SeriesCell.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class SeriesCell: UITableViewCell {
    
    var titleLabel: UILabel!
    var directorLabel: UILabel!
    var dateLabel: UILabel!
    var coverImageView: UIImageView!
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // This bad practice. Only meant to look good for demo purposes for iPhone 8 Plus
        titleLabel = UILabel(frame: CGRect(x: 10.0, y: 0.0, width: 100.0, height: 60.0))
        titleLabel.font = UIFont.systemFont(ofSize: 29.0)
        addSubview(titleLabel)
        directorLabel = UILabel(frame: CGRect(x:10.0 , y: 95.5, width: 300.0, height: 20.5))
        addSubview(directorLabel)
        dateLabel = UILabel(frame: CGRect(x:10.0, y: 116.0, width: 300.0, height: 20.5))
        addSubview(dateLabel)
        coverImageView = UIImageView(frame: CGRect(x: contentView.frame.size.width - 10.0 , y: 10.0, width: 91.0, height: 128.0))
        self.addSubview(coverImageView)

    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
