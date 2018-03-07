//
//  DataManager.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import Foundation

class DataController {
    static let shared = DataController()
    
    var books = [Book]()
    var movies = [Movie]()
    var series = [Series]()
    
    private init() {
        configureData()
    }
    
    func configureData() {
        let book1 = Book(title: "Do Androids Dream of Electric Sheep?", author: "Philip K. Dick", publicationDate: "1968", bookCover: #imageLiteral(resourceName: "DoAndroidsDream"))
        let book2 = Book(title: "Brave New World", author: "Aldous Huxley", publicationDate: "1932", bookCover: #imageLiteral(resourceName: "BraveNewWorld"))
        let book3 = Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", publicationDate: "1980", bookCover: #imageLiteral(resourceName: "HitchhikersBook"))
        books = [book1, book2, book3]
        
        let movie1 = Movie(title: "Blade Runner 2049", director: "Denis Villeneuve", releaseDate: "2017", movieCover: #imageLiteral(resourceName: "BladeRunner"))
        let movie2 = Movie(title: "Brave New World", director: "Leslie Libman, Larry Williams", releaseDate: "1998", movieCover: #imageLiteral(resourceName: "BraveMovie"))
        let movie3 = Movie(title: "The Hitchhiker's Guide to the Galaxy", director: "Hammer & Tongs", releaseDate: "2005", movieCover: #imageLiteral(resourceName: "HitchhikersMovie"))
        movies = [movie1, movie2, movie3]
        
        let show1 = Series(title: "Firefly", director: "Joss Whedon", runDate: "2002-2003 (Boooo)", showCover: #imageLiteral(resourceName: "Firefly"))
        series = [show1]
    }
}
