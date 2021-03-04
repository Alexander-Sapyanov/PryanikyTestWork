//
//  Picture.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit
import Kingfisher

class PictureCell: UITableViewCell, CellProtocol {
    
    // Cell identifier
    static let identifier = "PictureCell"
    
    // Image property
    private let pictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func setupCell(model: DataModel) {
        pictureImageView.kf.setImage(with: URL(string: model.data.url!))
    }
    
    private func cellLayout() {
        addSubview(pictureImageView)

        NSLayoutConstraint.activate([
            pictureImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            pictureImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            pictureImageView.widthAnchor.constraint(equalToConstant: 130),
            pictureImageView.heightAnchor.constraint(equalToConstant: 130)
        ])
    }
}

