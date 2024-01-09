//
//  TravelCollectionViewCell.swift
//  TravelCollectionAssignment
//
//  Created by 김재석 on 1/9/24.
//

import UIKit
import Kingfisher

class TravelCollectionViewCell: UICollectionViewCell {

    @IBOutlet var mainImageView: UIImageView!
    
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var cityExplainLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainImageView.layer.cornerRadius = (mainImageView.frame.height / 2)
        mainImageView.backgroundColor = .black
        
        // cityNameLabel 디자인
        cityNameLabel.text = "CITY NAME"
        cityNameLabel.font = .boldSystemFont(ofSize: 16)
        cityNameLabel.textAlignment = .center
        
        // cityExplainLabel 디자인
        cityExplainLabel.text = "CITY EXPLAIN"
        cityExplainLabel.numberOfLines = 0  // 줄 바꿈 able
        cityExplainLabel.font = .systemFont(ofSize: 12)
        cityExplainLabel.textColor = .systemGray
        cityExplainLabel.textAlignment = .center
    }
    
    // 구조체 받아와서 데이터 넣어주기
    func setDataInCell(city: City) {
        let imgUrl = URL(string: city.city_image)
        mainImageView.kf.setImage(with: imgUrl)
        mainImageView.contentMode = .scaleAspectFill
        
        cityNameLabel.text = "\(city.city_name) | \(city.city_english_name)"
        cityExplainLabel.text = city.city_explain
    }

}
