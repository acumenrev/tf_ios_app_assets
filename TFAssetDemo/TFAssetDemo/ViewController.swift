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
    @IBOutlet private weak var lblCenter : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadUI()
    }

    func loadUI() {
        let assets = TFAssets()
        _ = assets.getJsonFileFromAsset()
        _ = assets.getSampleTextFieldFromResources()
        _ = assets.getTextFileFromAsset()
        
        lblCenter.text = Localization.LangEn.helloWorld
        
        imgViewCenter.image = Asset.robot03.image
    }

}

