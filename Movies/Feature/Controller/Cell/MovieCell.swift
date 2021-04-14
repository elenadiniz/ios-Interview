//
//  MovieCell.swift
//  Movies
//

import UIKit

class MovieCell: UITableViewCell {
    lazy var movieImage: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()

    lazy var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configureViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        configureViews()
    }

    func configureViews() {
        contentView.addSubview(movieImage)
        contentView.addSubview(movieTitleLabel)

        movieImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        movieImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        movieImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        movieImage.widthAnchor.constraint(equalToConstant: 100).isActive = true

        movieTitleLabel.leadingAnchor.constraint(equalTo: movieImage.trailingAnchor, constant: 16).isActive = true
        movieTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        movieTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        movieTitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
