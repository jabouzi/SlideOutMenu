//
//  MenuView2.swift
//  SlideOut2
//
//  Created by Skander Jabouzi on 2017-12-19.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation

import UIKit

class MenuView2: UIView, UITableViewDataSource, UITableViewDelegate {
    
    var names = ["Brent Berg", "Cody Preston", "Kareem Dixon", "Xander Clark",
                 "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
                 "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
                 "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
                 "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
                 "Kenneth Mendez"]
    
    var tableView: UITableView!
    var selectedIndexPath: IndexPath?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        tableView = UITableView(frame: self.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "NameCell")
        self.addSubview(tableView)
        self.frame = self.bounds
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.frame.size.width = 240
        self.frame.size.height = 667
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell")!
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        tableView.deselectRow(at: indexPath, animated: true)
//        self.navigationController?.pushViewController(nameVC, animated: true)
    }
    
//    func nameController(nameVC: NameController, didSaveName name: String) {
//        if let indexPath = selectedIndexPath {
//            names[indexPath.row] = name
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        } else {
//            names.append(name)
//            tableView.reloadData()
//        }
//        self.navigationController?.popViewController(animated: true)
//    }
    
    func addNewUser() {
//        let nameVC = NameController()
//        nameVC.delegate = self
//        self.navigationController?.pushViewController(nameVC, animated: true)
    }
    
    
}
