//
//  StatisticsCovidData.swift
//  Covid-19
//
//  Created by Haseena Gul on 29/09/2020.
//  Copyright © 2020 haseena. All rights reserved.
//

import Foundation
struct StatisticsCovidData : Decodable{
    
    let parameters : Parameters
    let response : [Response]
    
    
    
}
struct Parameters  : Decodable {
    let country : String
    
}

struct Response : Decodable {
    let continent : String
    let cases : Cases
    let deaths : Deaths
}

struct Cases : Decodable {
    let new : String
    let active : Int
    let critical : Int
}

struct Deaths : Decodable{
    let new : String
    let total : Int
    
}
