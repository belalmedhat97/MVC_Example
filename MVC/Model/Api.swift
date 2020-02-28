//
//  Api.swift
//  MVC
//
//  Created by Belal medhat on 1/21/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
import Alamofire
class APICALL {
    private let UrlLink = "https://dog.ceo/api/breeds/image/random"
    static let shared = APICALL()
    private init (){}
    
    
    var deg:GetData?
    func Net(){
        Alamofire.request(UrlLink,method: .get ,parameters: nil).responseJSON {
            response in
            do {
                let pars = try JSONDecoder().decode(APIData.self,from:response.data!)
                self.deg?.DataRet(LIST: pars)
                print(pars.message!)
            }
            catch{
                print(error)
            }
        }

        
    }
}
