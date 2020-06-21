//
//  Video.swift
//  youtube_ios_tutorial
//
//  Created by Adarsh Ponaka on 6/20/20.
//  Copyright © 2020 Adarsh Ponaka. All rights reserved.
//

import Foundation

struct Video : Decodable{
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        //you need to include these keys in order to get to some of the other ones below (need to include
        //all within the heircahry of json file
        case snippet
        case thumbnails
        case standard
        case resourceId

        //if the json key matches the property name, no need to use "="
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init (from decoder:Decoder) throws{
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //parse the data
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let standardContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .standard)
        self.thumbnail = try standardContainer.decode(String.self, forKey: .thumbnail)
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
}
