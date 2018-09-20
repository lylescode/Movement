//
//  IngredientsViewController.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {

    @IBOutlet var foundButton: RoundedButton!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var itemsView: UIView!
    @IBOutlet var selectedItemsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func foundButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

class IngredientView: UIView {
    private var tagLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        renderView()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderView()
    }
    init() {
        super.init(frame: CGRect.zero)
        renderView()
    }
    func renderView() {
        tagLabel = UILabel(frame: CGRect(x: 5, y: 0, width: bounds.width - 40, height: bounds.height))
        tagLabel.text = "Test"
        self.addSubview(tagLabel)
        layer.cornerRadius = frame.height * 0.5
    }
}
