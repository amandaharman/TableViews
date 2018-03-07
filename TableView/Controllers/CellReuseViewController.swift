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
        case book, movie, series
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        configureTableView()
    }
    
    //MARK: Helpers
    
    func registerCells() {
        //Register cell created in .xib file
        tableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
        
        //Register cell created soley in code
        tableView.register(SeriesCell.self, forCellReuseIdentifier: "SeriesCell" )
    }
    
    func configureTableView() {
        tableView.rowHeight = 150.0
    }
}

// MARK: UITableViewDataSource

extension CellReuseViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.book.rawValue:
            return DataController.shared.books.count
        case Section.movie.rawValue:
            return DataController.shared.movies.count
        case Section.series.rawValue:
            return DataController.shared.series.count
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
        case Section.series.rawValue:
            return "Series"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
            
        case Section.book.rawValue:
            guard let cell: BookCell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as? BookCell else { break }
            cell.configureCell(book: DataController.shared.books[indexPath.row])
            return cell
        case Section.movie.rawValue:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell else { break }
            cell.configureCell(movie: DataController.shared.movies[indexPath.row])
            return cell
        case Section.series.rawValue:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesCell", for: indexPath) as? SeriesCell else { break }
            cell.configureCell(series: DataController.shared.series[indexPath.row])
            return cell
        default:
            break
        }
        
        return UITableViewCell()
    }

}

