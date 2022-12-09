//
//  ViewController.swift
//  Example
//
//  Created by Sosin Vladislav on 08.12.2022.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setText()
        setImage()
    }
    
    private func setText() {
        view.backgroundColor = .white
        let labelFrame = CGRect(x: 0, y: 0, width: 200, height: 40)
        label.frame = labelFrame
        label.text = "Hello".localized()
        //label.text = NSLocalizedString("Hello", comment: "")
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.center = self.view.center
        view.addSubview(label)
    }
    
    private func setImage() {
        let imageView = UIImageView(frame: CGRect(
            x: self.view.frame.size.width / 4,
            y: self.view.frame.size.height / 2 + 30,
            width: self.view.frame.size.width / 2,
            height: self.view.frame.size.height / 4
        ))
        
        imageView.image = UIImage(named: "png".localized())
        view.addSubview(imageView)
    }
}

extension String {
    func localized() -> String {
        NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self
        )
    }
}
