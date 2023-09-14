//
//  WGAddingRecordHeaderView.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/9/13.
//

import UIKit
import SnapKit
class WGAddingRecordHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: private funcs
    private func setupViews() {
        self.addSubview(self.cancelButton)
        self.addSubview(self.titleLabel)
        self.addSubview(self.saveButton)
        self.cancelButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.centerY.equalToSuperview()
        }
        
        self.titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        self.saveButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.width.height.equalTo(50)
            make.centerY.equalToSuperview()
        }
    }
    
    @objc func cancelAction() {
        
    }
    
    lazy var cancelButton: UIButton = {
        let btn = UIButton(frame: .zero)
        btn.setTitle("取消", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action:#selector(cancelAction), for: .touchUpInside)
        return btn
    }()
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "增加收支项目"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    lazy var saveButton: UIButton = {
        let btn = UIButton(frame: .zero)
        btn.setTitle("保存", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action:#selector(cancelAction), for: .touchUpInside)
        return btn
    }()
}
