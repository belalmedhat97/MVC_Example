//
//  MainView.swift
//  MVC
//
//  Created by belal medhat on 11/03/2022.
//  Copyright © 2022 Belal medhat. All rights reserved.
//

import UIKit
// create delegate to make UIView communicate with viewcontroller using delegate pattern
protocol MainViewProtocols{
    func callDogAPI()
}
class MainView: UIView {
     var delegate:MainViewProtocols?
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    override func awakeFromNib() {
       super.awakeFromNib()
       //custom logic goes here
    }
    @IBOutlet weak var dogImg: UIImageView!
    
    @IBAction func showButton(_ sender: UIButton) {
        self.delegate?.callDogAPI()
        
    }
}
