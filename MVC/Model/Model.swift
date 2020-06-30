//
//  Model.swift
//  MVC
//
//  Created by Belal medhat on 1/21/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
// protocol for getting data parsed from codable
protocol GetData {
    func DataRet(LIST:APIData)
}
// codable for data parsing data 
struct APIData:Codable{
    var message:String?
    var status:String?
}
