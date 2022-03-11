//
//  ViewController.swift
//  MVC
//
//  Created by Belal medhat on 1/18/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import UIKit
import SDWebImage
class MainVC: UIViewController,MainViewProtocols{


    private var mainUIView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        mainUIView = Bundle.main.loadNibNamed("MainView", owner: nil, options: nil)?.first as! MainView
        self.view.addSubview(mainUIView)
        
        mainUIView.delegate = self
//        APICALL.shared.deg = self // Make delegation for the Getdata protocol to confirm Methods
                // Do any additional setup after loading the view.
    }
    func setConstraints(){
        mainUIView.translatesAutoresizingMaskIntoConstraints = false
        mainUIView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        mainUIView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        mainUIView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        mainUIView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true

    }

    func callDogAPI() {
        APICALL.shared.Net { [weak self] data in
            self?.mainUIView.dogImg.sd_setImage(with: URL(string: data.message ?? ""), completed: nil)
        }
    }
    
}

