//
//  DisplayView.swift
//  WA8_1
//
//  Created by user266918 on 11/4/24.
//

import UIKit

class DisplayView: UIView {

    var contentWrapper:UIScrollView!
    var tableViewMessages:UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupContentWrapper()
        setupTableViewMessages()
        initConstraints()
    }
    
    func setupTableViewMessages() {
        tableViewMessages = UITableView()
        tableViewMessages.register(MessageCell.self, forCellReuseIdentifier: "messages")
        tableViewMessages.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewMessages)
    }
    
    func setupContentWrapper(){
        contentWrapper = UIScrollView()
        contentWrapper.translatesAutoresizingMaskIntoConstraints = false
        contentWrapper.contentOffset = CGPoint(x: 0, y: contentWrapper.contentSize.height - contentWrapper.bounds.height + contentWrapper.contentInset.bottom)
        self.addSubview(contentWrapper)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate(
            [
                contentWrapper.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
                        contentWrapper.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
                        contentWrapper.widthAnchor.constraint(equalTo:self.safeAreaLayoutGuide.widthAnchor),
                        contentWrapper.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor),
            ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
