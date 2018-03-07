//
//  MovieCell.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var directorLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var movieCoverImageView: UIImageView!
    
    func configureCell(movie: Movie) {
        titleLabel.text = movie.title
        directorLabel.text = movie.director
        dateLabel.text = movie.releaseDate
        movieCoverImageView.image = movie.movieCover
    }
}
