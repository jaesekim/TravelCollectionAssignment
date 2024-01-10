//
//  UINib+Extension.swift
//  TravelCollectionAssignment
//
//  Created by 김재석 on 1/10/24.
//

import UIKit

extension UIViewController {
    
    // xib 파일 연결하는 함수
    func connectXibToCell(nibName: String, targetCollection: UICollectionView) {
        let xib = UINib(nibName: nibName, bundle: nil)
        targetCollection.register(xib, forCellWithReuseIdentifier: nibName)
    }
    
    // collection view 레이아웃 설정 함수
    func setCollectionViewLayout(
        spacing: CGFloat,
        cellWidth: CGFloat,
        cellHeight: CGFloat,
        targetCollection: UICollectionView
    ) {
       // layout 객체생성
        let layout = UICollectionViewFlowLayout()
        
        // layout 세부 설정
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.4)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumLineSpacing = spacing
        
        // layout 적용
        targetCollection.collectionViewLayout = layout
    }
}
