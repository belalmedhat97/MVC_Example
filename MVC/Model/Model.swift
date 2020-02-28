//
//  Model.swift
//  MVC
//
//  Created by Belal medhat on 1/21/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
protocol GetData {
    func DataRet(LIST:APIData)
}
struct APIData:Codable{
    var message:String?
    var status:String?
}
class SaveALL {
    var message:String?
    var status:String?
    init(message1:String,status1:String){
        self.message = message1
        self.status = status1
    }
}
