//
//  SvrfError.swift
//  SVRFFrameworkSetup
//
//  Created by Andrei Evstratenko on 08/11/2018.
//  Copyright © 2018 SVRF, Inc. All rights reserved.
//

import Foundation

public enum SvrfError: String {
    
    case Plist = "SVRF: Problems with .plist file"
    case ApiKey = "SVRF: Problems with API key. Please, set your API key into .plist file for SVRF_API_KEY field"
    case AuthResponse = "SVRF: Authentication response error"
    case SearchResponse = "SVRF: Search response error"
    case TrendingResponse = "SVRF: Trending response error"
    case MediaResponse = "SVRF: Media response error"
    case GetScene = "SVRF: Get scene error"
    case GetNode = "SVRF: Get node error"
    case CreateScene = "SVRF: Create scene error"
}
