//
//  Constants.swift
//  youtube_ios_tutorial
//
//  Created by Adarsh Ponaka on 6/20/20.
//  Copyright © 2020 Adarsh Ponaka. All rights reserved.
//

import Foundation


struct Constants {
    
    static var API_KEY = "AIzaSyC-2Ce10Py8cGR8wr79TWdGIwStmBktjt4"
    static var PLAYLIST_ID = "PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
