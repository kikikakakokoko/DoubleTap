//
//  ViewController.swift
//  DoubleTap
//
//  Created by max on 2022/04/14.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
        
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "Image")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        imageView.center = view.center
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didDoubleTap(_:)))
        
        tapGesture.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGesture)
        
    }
    @objc private func didDoubleTap( _ gesture: UITapGestureRecognizer) {
        
        print("fired")
        
    }

}

