//
//  ViewController.swift
//  TFAssetDemo
//
//  Created by AL-TVO163 on 15/06/2023.
//

import UIKit
import TFAssets

class ViewController: UIViewController {

    @IBOutlet private weak var imgViewCenter : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadUI()
    }

    func loadUI() {
        let assets = TFAssets()
        imgViewCenter.image = UIImage.robot
        _ = assets.getJsonFileFromAsset()
        _ = assets.getSampleTextFieldFromResources()
        _ = assets.getTextFileFromAsset()
    }

}

