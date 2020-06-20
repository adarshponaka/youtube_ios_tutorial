//
//  ViewController.swift
//  youtube_ios_tutorial
//
//  Created by Adarsh Ponaka on 6/19/20.
//  Copyright © 2020 Adarsh Ponaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()

        model.getVideos()

    }


}

