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
        
        imageView.clipsToBounds = true
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
        
        guard let gestureView = gesture.view else {
            return
        }
        
        let size = gestureView.frame.size.width/4
        
        let heart = UIImageView(image: UIImage(systemName: "heart.fill"))
        heart.frame = CGRect(x: (gestureView.frame.size.width-size)/2, y: (gestureView.frame.size.height-size)/2, width: size, height: size)
        heart.tintColor = .white
        heart.alpha = 0
        
        gestureView.addSubview(heart)
        
        UIView.animate(withDuration: 0.5, animations: {
            heart.alpha = 1
        }, completion: { done in
            
            if done{
                UIView.animate(withDuration: 1, animations: {
                    heart.alpha = 0
                },completion: { done in
                    if done {
                        heart.removeFromSuperview()
                    }
                })
            }
        })
    }
}

