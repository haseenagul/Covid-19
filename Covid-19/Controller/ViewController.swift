//
//  ViewController.swift
//  Covid-19
//
//  Created by Haseena Gul on 26/09/2020.
//  Copyright © 2020 haseena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var statisticmanager = StatisticsManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //URL
//        let url = URL(string: "https://covid-193.p.rapidapi.com/statistics?country=Pakistan")
//
//        guard url != nil else {
//            print("Error creating url object")
//            return
//        }
//        //URL REQUEST
//        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
//
//        //Specify the headers.
//      let headers = ["x-rapidapi-host": "covid-193.p.rapidapi.com",
//      "x-rapidapi-key": "42bc3141a7mshfd6d6a8a4cc1290p10e0ffjsnd95461bf51a1"]
//        request.allHTTPHeaderFields = headers
//
//        request.httpMethod = "GET"
//
//        // Get URLSession.
//        let session = URLSession.shared
//
//        //create the data task.
//        let dataTask =  session.dataTask(with: request) { (data, response, error) in
//
            
//            // check for error
//            if error == nil && data != nil {
//
//                //try to parse out the data
//               //uer jason
//                do{
//            let dictionary =  try    JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String: Any]
//
//                    print(dictionary)
//                }
//                catch {
//                    print("Error in parsing json")
//                }
//
//            }
//
//        }
//
//        // fire off the task
//        dataTask.resume()
  }
//

    
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func PressedButton(_ sender: UIButton) {
        
        textField.endEditing(true)
        
        if let countryname = textField.text{
            statisticmanager.fetchCovidData(counrty: countryname)
           
        
        }
               // print (textField.text!)
            
            
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                textField.endEditing(true)
                //print(textField.text!)
                return true
            }
             
            func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
                if textField.text != ""{
                    return true
                    }
                else {
                    
                    textField.placeholder = "Enter Country name"
                    return false
                }
            }
            
            
            func textFieldDidEndEditing(_ textField: UITextField) {
                
                
                }
              
                
            }
       
            
        }
        
        

        
        
        
        
 
