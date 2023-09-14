//
//  WGAddingRecordViewController.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/9/12.
//

import UIKit
import SnapKit
import ESTabBarController
class WGAddingRecordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.setupViews()
    }
    

    //MARK: - private functions
    private func setupViews() {
        self.view.addSubview(headerView)
        self.view.addSubview(recordTable)
        headerView.snp.makeConstraints { make in
            make.trailing.leading.top.equalToSuperview()
            make.height.equalTo(50)
        }
        
        recordTable.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(self.headerView.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
    
    // subviews
    lazy var headerView: WGAddingRecordHeaderView = {
        var view = WGAddingRecordHeaderView()
        return view
    }()
    
    lazy var recordTable: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
}


extension WGAddingRecordViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
