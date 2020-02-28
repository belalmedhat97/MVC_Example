//
//  ViewController.swift
//  MVC
//
//  Created by Belal medhat on 1/18/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import UIKit
import SDWebImage
class ViewController: UIViewController{
   
    override func viewDidLoad() {
        super.viewDidLoad()
        APICALL.shared.deg = self

        
                // Do any additional setup after loading the view.
    }

    @IBOutlet weak var DogImage: UIImageView!
    @IBAction func ButtShow(_ sender: UIButton) {
        DispatchQueue.main.async {
            APICALL.shared.Net()

        }

//            print(self.DataSaveApi)

    }
    
    
}
extension ViewController:GetData{
    func DataRet(LIST: APIData) {
  
        if LIST.status == "success" {
            
            DogImage!.sd_setImage(with: URL(string:(LIST.message!)), completed: nil)
        }else{
            print("Fail")
        }

            
        }

    
}
