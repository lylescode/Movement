//
//  MovementViewController.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

class MovementViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView! {
        didSet {
            collectionView.dataSource = self
            collectionView.delegate = self
            
            collectionView.register(nib: .MovementCell)
        }
    }
    fileprivate var collectionViewSectionInsets: UIEdgeInsets!
    
    fileprivate let movementItems = ["Ingredients",
                                     "Navigation Interaction",
                                     "Search Icon",
                                     "Select Card",
                                     "3D Label Transition",
                                     "Ingredients",
                                     "Navigation Interaction",
                                     "Search Icon",
                                     "Select Card",
                                     "3D Label Transition"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionViewLayout()
    }
    
    func setupCollectionViewLayout() {
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        collectionViewSectionInsets = flowLayout.sectionInset
        
        let cellWidth = collectionView.frame.width - (collectionViewSectionInsets.left + collectionViewSectionInsets.right)
        flowLayout.estimatedItemSize = CGSize(width: cellWidth, height: MovementCell.cellHeight)
        collectionView.collectionViewLayout = flowLayout
        
    }
}

// MARK: CollectionView data source
extension MovementViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movementItems.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Nib.MovementCell.rawValue, for: indexPath) as! MovementCell
        cell.titleLabel.text = movementItems[indexPath.row]
        return cell
    }
}

// MARK: CollectionView delegate
extension MovementViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(#function) indexPath : \(indexPath)")
        if movementItems[indexPath.row] == movementItems[0] {
            let controller = Storyboard.Ingredients.instantiate(IngredientsViewController.self)
            self.present(controller, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UIDevice.current.userInterfaceIdiom == .phone {
            let cellWidth = collectionView.frame.size.width - (collectionViewSectionInsets.left + collectionViewSectionInsets.right)
            
            return CGSize(width: cellWidth, height: MovementCell.cellHeight)
            /*
            if UIDevice.current.orientation == .portrait {
                return CGSize(width: cellWidth, height: MovementCell.cellHeight)
            } else {
                return CGSize(width: cellWidth / 2, height: MovementCell.cellHeight)
            }*/
        } else {
            let numberOfItemsInRow = 2
            let rowNumber = indexPath.item / numberOfItemsInRow
            
            let contentsWidth = collectionView.frame.size.width - (collectionViewSectionInsets.left + collectionViewSectionInsets.right)
            
            let compressedWidth = ceil(contentsWidth / 3) - 1
            let expandedWidth = ceil(compressedWidth * 2) - 1
            
            let isEvenRow = rowNumber % 2 == 0
            
            let isFirstItem = indexPath.item % numberOfItemsInRow != 0
            var cellWidth: CGFloat
            if isEvenRow {
                cellWidth = isFirstItem ? compressedWidth : expandedWidth
            } else {
                cellWidth = isFirstItem ? expandedWidth : compressedWidth
            }
            return CGSize(width: cellWidth, height: MovementCell.cellHeight)
        }
    }
}

// MARK: CollectionView FlowLayout delegate
extension MovementViewController: UICollectionViewDelegateFlowLayout {
    
}
