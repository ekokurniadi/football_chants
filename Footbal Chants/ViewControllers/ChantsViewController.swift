//
//  ChantsViewController.swift
//  Footbal Chants
//
//  Created by Mac on 19/08/24.
//

import UIKit

class ChantsViewController: UIViewController {
    
    
    // MARK: - UI
    private lazy var tableVw:UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 44
        tv.separatorStyle = .none
        tv.register(UITableViewCell.self, forCellReuseIdentifier:"Cell")
        return tv
    }()
    
    // MARK: - Lifecycle
    override func loadView() {
        super.loadView()
        setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue
        // Do any additional setup after loading the view.
    }
}

private extension ChantsViewController {
    func setup(){
        
        tableVw.dataSource = self
        self.view.addSubview(tableVw)
        
        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.topAnchor),
            tableVw.bottomAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.bottomAnchor),
            tableVw.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor),
            tableVw.trailingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

// MARK: - UITableViewDataSource
extension ChantsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .systemTeal
        case 1:
            cell.backgroundColor = .systemGray
        case 2:
            cell.backgroundColor = .systemPink
        default:
            break
        }
        
        return cell
    }
    
    
}
