//
//  ViewController.swift
//  DoubleTap
//
//  Created by max on 2022/04/14.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 220, height: 220))
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Image")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.center = view.center
    }


}

