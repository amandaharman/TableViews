//
//  CellReuseViewController.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class CellReuseViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    enum Section: Int {
        case book, movie
    }
    
    var books = [Book]()
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureData()
        registerCells()
    }
    
    //MARK: Helpers
    
    func configureData() {
        let book1 = Book(title: "Do Androids Dream of Electric Sheep?", author: "Philip K. Dick", publicationDate: "1968", bookCover: #imageLiteral(resourceName: "DoAndroidsDream"))
        let book2 = Book(title: "Brave New World", author: "Aldous Huxley", publicationDate: "1932", bookCover: #imageLiteral(resourceName: "BraveNewWorld"))
        let book3 = Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", publicationDate: "1980", bookCover: #imageLiteral(resourceName: "HitchhikersBook"))
        
        books = [book1, book2, book3]
        
        let movie1 = Movie(title: "Blade Runner 2049", director: "Denis Villeneuve", releaseDate: "2017", movieCover: #imageLiteral(resourceName: "BladeRunner"))
        let movie2 = Movie(title: "Brave New World", director: "Leslie Libman, Larry Williams", releaseDate: "1998", movieCover: #imageLiteral(resourceName: "BraveMovie"))
        let movie3 = Movie(title: "The Hitchhiker's Guide to the Galaxy", director: "Hammer & Tongs", releaseDate: "2005", movieCover: #imageLiteral(resourceName: "HitchhikersMovie"))
        movies = [movie1, movie2, movie3]
    }
    
    func registerCells() {
        tableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
    }
}

// MARK: UITableViewDataSource

extension CellReuseViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.book.rawValue:
            return books.count
        case Section.movie.rawValue:
            return movies.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Section.book.rawValue:
            return "Books"
        case Section.movie.rawValue:
            return "Movies"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            
        case Section.book.rawValue:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as? BookCell else { return UITableViewCell() }
            cell.titleLabel.text = books[indexPath.row].title
            cell.authorLabel.text = books[indexPath.row].author
            cell.dateLabel.text = books[indexPath.row].publicationDate
            cell.coverImageView.image = books[indexPath.row].bookCover
            return cell
        case Section.movie.rawValue:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell else { return UITableViewCell() }
            cell.titleLabel.text = movies[indexPath.row].title
            cell.directorLabel.text = movies[indexPath.row].director
            cell.dateLabel.text = movies[indexPath.row].releaseDate
            cell.movieCoverImageView.image = movies[indexPath.row].movieCover
            return cell
        default:
            break
        }
        
        return UITableViewCell()
    }
}
