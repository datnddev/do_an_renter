//
//  SplashCollectionViewCell.swift
//  WeSportsRenter
//
//  Created by datNguyem on 20/10/2021.
//

import UIKit

class SplashCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageSplash: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    static let identifier = "SplashCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configure(data: SplashItem) {
        titleLabel.text = data.title
        contentLabel.text = data.content
        imageSplash.image = data.image
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
