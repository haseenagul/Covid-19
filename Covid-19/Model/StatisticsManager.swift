//
//  StatisticsManager.swift
//  Covid-19
//
//  Created by Haseena Gul on 26/09/2020.
//  Copyright © 2020 haseena. All rights reserved.
//

import Foundation
struct StatisticsManager {
    
 
    
    func fetchCovidData (counrty : String){
    let url = "https://covid-193.p.rapidapi.com/statistics"
    let urlString = URL(string: "\(url)?country=\(counrty)")
       guard urlString != nil else {
        print("Error creating url object")
            return
        }
               
               //URL REQUEST
    var request = URLRequest(url: urlString!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
               
        //Specify the headers.
    let headers = ["x-rapidapi-host": "covid-193.p.rapidapi.com",
    "x-rapidapi-key": "42bc3141a7mshfd6d6a8a4cc1290p10e0ffjsnd95461bf51a1"]
               request.allHTTPHeaderFields = headers
               request.httpMethod = "GET"
               
               // Get URLSession.
               let session = URLSession.shared
               
               //create the data task.
               let dataTask =  session.dataTask(with: request) { (data, response, error) in
                   
                   
                   // check for error
                if error != nil{
                    print(error)
                    return
                }
                if let safeData = data{
                    
                parseJSONCovidData(CovidData: safeData)
                    
            //Here parse the JSON.
                    
           // let dataString = String(data: safeData, encoding: .utf8)
                    //print(dataString)
                
                }
                
            }
        dataTask.resume()
                             
        }
                         
    }
                     
    func parseJSONCovidData (CovidData : Data){
        let decoder = JSONDecoder()
          do {
            let decodedData =  try decoder.decode(StatisticsCovidData.self, from: CovidData)
            print ("Country is\(decodedData.parameters.country)")
                
                
            print("Continent is\(decodedData.response[0].continent)")
                
            print(" New cases is \(decodedData.response[0].cases.new)")
            print(" Active cases is \(decodedData.response[0].cases.active)")
             print(" Critical is cases \(decodedData.response[0].cases.critical)")
            print(" New Deaths is \(decodedData.response[0].deaths.new)")
            print("Total deaths is \(decodedData.response[0].deaths.total)")
        
          }
          catch {
            
            print(error)
        }

}

