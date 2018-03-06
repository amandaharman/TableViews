//
//  CellReuseViewController.swift
//  TableView
//
//  Created by Amanda Harman on 3/6/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class CellReuseViewController: UIViewController {
    
    enum Section: Int {
        case storyboard, nib
    }
    
    var books = [Book]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureData()
        registerCells()
    }
    
    
    //MARK: Helpers
    
    func configureData() {
        let book = Book(title: "Do Androids Dream of Electric Sheep?", author: "Philip K. Dick", publicationDate: "1968", bookCover: #imageLiteral(resourceName: "DoAndroidsDream"))
        let book2 = Book(title: "Brave New World", author: "Aldous Huxley", publicationDate: "1932", bookCover: #imageLiteral(resourceName: "BraveNewWorld"))
        books = [book, book2]
    }
    
    func registerCells() {
        
    }
}

// MARK: UITableViewDataSource

extension CellReuseViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.storyboard.rawValue:
            return 1
        case Section.nib.rawValue:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Section.storyboard.rawValue:
            return "Storyboard"
        case Section.nib.rawValue:
            return "Nib"
        default:
            return nil
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            
        case Section.storyboard.rawValue:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "StoryboardCell") as? StoryboardCell else { return UITableViewCell() }
            cell.titleLabel.text = books[indexPath.row].title
            cell.authorLabel.text = books[indexPath.row].author
            cell.dateLabel.text = books[indexPath.row].publicationDate
            cell.coverImageView.image = books[indexPath.row].bookCover
            return cell
        case Section.nib.rawValue:
            break
        default:
            break
        }
        
        return UITableViewCell()
    }
}
