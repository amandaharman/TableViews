//
//  BookCell.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var coverImageView: UIImageView!

    func configureCell(book: Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        dateLabel.text = book.publicationDate
        coverImageView.image = book.bookCover
    }

}
