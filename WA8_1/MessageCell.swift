//
//  MessageCell.swift
//  WA8_1
//
//  Created by user266918 on 11/4/24.
//

import UIKit

class MessageCell: UITableViewCell {

    var wrapperCellView: UIView!
    var labelName: UILabel!
    var labelTime: UILabel!
    var labelText: UILabel!
        
    //MARK: unused methods...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupWrapperCellView()
            setupLabelName()
            setupLabelTime()
            setupLabelText()
            initConstraints()
        }
        
        func setupWrapperCellView(){
            wrapperCellView = UITableViewCell()
            wrapperCellView.layer.borderColor = UIColor.gray.cgColor
            wrapperCellView.layer.borderWidth = 1
            wrapperCellView.layer.cornerRadius = 5
            wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(wrapperCellView)
        }
        
        func setupLabelName(){
            labelName = UILabel()
            labelName.translatesAutoresizingMaskIntoConstraints = false
            wrapperCellView.addSubview(labelName)
        }
    
    func setupLabelTime(){
        labelTime = UILabel()
        labelTime.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(labelTime)
    }
    
    func setupLabelText(){
        labelText = UILabel()
        labelText.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(labelText)
    }
        
        func initConstraints(){
            NSLayoutConstraint.activate([
                wrapperCellView.topAnchor.constraint(equalTo: self.topAnchor),
                wrapperCellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                wrapperCellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                wrapperCellView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                
                labelName.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 8),
                labelName.centerYAnchor.constraint(equalTo: wrapperCellView.centerYAnchor),
                labelName.heightAnchor.constraint(equalTo: wrapperCellView.heightAnchor, constant: -20),
                labelName.widthAnchor.constraint(equalTo: wrapperCellView.heightAnchor, constant: -20),
                
                labelTime.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 28),
                labelTime.heightAnchor.constraint(equalToConstant: 20),
                labelTime.leftAnchor.constraint(equalTo: labelTime.rightAnchor, constant: 8),
                
                labelText.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8),
                labelText.centerXAnchor.constraint(equalTo: wrapperCellView.leftAnchor, constant: 8),
                
                wrapperCellView.heightAnchor.constraint(equalToConstant: 76)
            ])
        }

}
