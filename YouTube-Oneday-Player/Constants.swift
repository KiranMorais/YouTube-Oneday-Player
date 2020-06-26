//
//  Constants.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 25/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyDwdGNpqiNRerusUV6u2ryialCQFkh3oSY"
    static var PLAYLIST_ID = "PL9bw4S5ePsEGISygM8mrvI5JULlmgCeds"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}

