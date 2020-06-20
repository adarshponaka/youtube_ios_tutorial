//
//  Model.swift
//  youtube_ios_tutorial
//
//  Created by Adarsh Ponaka on 6/20/20.
//  Copyright © 2020 Adarsh Ponaka. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos(){
        
        //Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        //Get a URLSession object
        let session = URLSession.shared
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check for erros
            if error != nil || data == nil{
                return
            }
            
            //Parsing the data into video objects
            
        }
        
        //Kick off the task
        dataTask.resume()
        
    }
    
}
