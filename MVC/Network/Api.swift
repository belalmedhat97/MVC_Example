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
    static let shared = APICALL() // singleton pattern
    private init (){}
    
    
    func Net(compeltion:@escaping(_ data:APIData)->()){
        Alamofire.request(UrlLink,method: .get ,parameters: nil).responseJSON {
            response in
            do {
                let pars = try JSONDecoder().decode(APIData.self,from:response.data!)
                compeltion(pars)
                print(pars.message!)
            }
            catch{
                print(error)
            }
        }

        
    }
}
