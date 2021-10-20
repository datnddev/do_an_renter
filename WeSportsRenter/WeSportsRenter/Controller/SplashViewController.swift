//
//  SplashViewController.swift
//  WeSportsRenter
//
//  Created by datNguyem on 20/10/2021.
//

import UIKit

final class SplashViewController: UIViewController {
    @IBOutlet weak var splashCollectionView: UICollectionView!
    
    private let pages = [
        SplashItem(title: "Chào mừng bạn đến với WeSports", content: "Ứng dụng thể thao hàng đầu Việt Nam. Nơi bạn thỏa mãn đam mê.", image: UIImage(named: "welcome1") ?? UIImage()),
        SplashItem(title: "Tìm kiếm nhanh gọn, đặt sân thần tốc", content: "Tìm kiếm và đặt sân theo cách trực tuyến, giao diện trực quan", image: UIImage(named: "welcome2") ?? UIImage()),
        SplashItem(title: "Thể dục thể thao, nâng cao sức khỏe", content: "Nâng cao sức khỏe, bảo vệ bản thân. Hãy thể thao ngay", image: UIImage(named: "welcome3") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashCollectionView.dataSource = self
        splashCollectionView.delegate = self
        splashCollectionView.register(SplashCollectionViewCell.nib(), forCellWithReuseIdentifier: SplashCollectionViewCell.identifier)
    }
}

extension SplashViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SplashCollectionViewCell.identifier, for: indexPath) as! SplashCollectionViewCell
        cell.configure(data: pages[indexPath.row])
        return cell
    }
}

extension SplashViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
