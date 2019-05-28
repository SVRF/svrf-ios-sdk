//
//  SvrfAPIManager.swift
//  SvrfSDK
//
//  Created by Andrei Evstratenko on 28/05/2019.
//  Copyright © 2019 Svrf, Inc. All rights reserved.
//

import Foundation
import Alamofire

class SvrfAPIManager {

    static private let baseURL = "https://api.svrf.com/v1"
    static private var xAppToken: String?

    static func setToken(_ token: String) {
        xAppToken = token
    }

    static func authenticate(with apiKey: String,
                             onSuccess success: @escaping (_ authenticationResponse: SvrfAuthenticationResponse) -> Void,
                             onFailure failure: @escaping (_ error: Error?) -> Void) {

        let path = "/app/authenticate"
        let urlString = baseURL + path

        let header = ["content-type": "application/json"]
        let parameters = ["apiKey": apiKey]

        Alamofire.request(urlString,
                          method: .post,
                          parameters: parameters,
                          encoding: JSONEncoding.default,
                          headers: header).responseJSON { response in

            if let jsonData = response.data {
                do {
                    let decoder = JSONDecoder()
                    let authenticationResponse = try decoder.decode(SvrfAuthenticationResponse.self, from: jsonData)

                    success(authenticationResponse)
                } catch let error {
                    failure(error)
                }
            }
        }
    }

    static func getMedia(by identifier: String,
                         onSuccess success: @escaping (_ mediaResponse: SvrfMediaResponse) -> Void,
                         onFailure failure: @escaping (_ error: Error?) -> Void) {

        let path = "/vr/\(identifier)"
        let urlString = baseURL + path

        let header = ["x-app-token": xAppToken ?? "",
                      "accept": "application/json"]

        let request = Alamofire.request(urlString,
                                        method: .get,
                                        parameters: nil,
                                        encoding: JSONEncoding.default,
                                        headers: header)
        request.responseJSON { response in

            if let jsonData = response.data {

                do {
                    let decoder = JSONDecoder()
                    let mediaResponse = try decoder.decode(SvrfMediaResponse.self, from: jsonData)

                    success(mediaResponse)
                } catch let error {
                    failure(error)
                }
            }
        }
    }

    static func getTrending(options: SvrfOptions?,
                            onSuccess success: @escaping (_ trendingResponse: SvrfTrendingResponse) -> Void,
                            onFailure failure: @escaping (_ error: Error?) -> Void) {

        let path = "/vr/trending"
        let urlString = baseURL + path

        let header = ["x-app-token": xAppToken ?? "",
                      "accept": "application/json"]
        let parameters: [String: Any?] = ["type": options?.type?.map { $0.rawValue }.joined(),
                          "stereoscopicType": options?.stereoscopicType?.rawValue,
                          "category": options?.category?.rawValue,
                          "size": options?.size,
                          "minimumWidth": options?.minimumWidth,
                          "pageNum": options?.pageNum,
                          "isFaceFilter": options?.isFaceFilter,
                          "hasBlendShapes": options?.hasBlendShapes,
                          "requiresBlendShapes": options?.requiresBlendShapes]

        var url = URLComponents(string: urlString)
        url?.queryItems = mapValuesToQueryItems(values: parameters)

        let request = Alamofire.request(url ?? urlString,
                                        method: .get,
                                        parameters: nil,
                                        encoding: JSONEncoding.default,
                                        headers: header)

        request.responseJSON { response in

            if let jsonData = response.data {

                do {
                    let decoder = JSONDecoder()
                    let trendingResponse = try decoder.decode(SvrfTrendingResponse.self, from: jsonData)

                    success(trendingResponse)
                } catch let error {
                    failure(error)
                }
            }
        }
    }

    static func search(query: String,
                       options: SvrfOptions?,
                       onSuccess success: @escaping (_ searchResponse: SvrfSearchResponse) -> Void,
                       onFailure failure: @escaping (_ error: Error?) -> Void) {

        let path = "/vr/search"
        let urlString = baseURL + path

        let header = ["x-app-token": xAppToken ?? "",
                      "accept": "application/json"]
        let parameters: [String: Any?] = ["type": options?.type?.map { $0.rawValue }.joined(),
                                          "stereoscopicType": options?.stereoscopicType?.rawValue,
                                          "category": options?.category?.rawValue,
                                          "size": options?.size,
                                          "minimumWidth": options?.minimumWidth,
                                          "pageNum": options?.pageNum,
                                          "isFaceFilter": options?.isFaceFilter,
                                          "hasBlendShapes": options?.hasBlendShapes,
                                          "requiresBlendShapes": options?.requiresBlendShapes,
                                          "q": query]
        var url = URLComponents(string: urlString)
        url?.queryItems = mapValuesToQueryItems(values: parameters)

        let request = Alamofire.request(url ?? urlString,
                                        method: .get,
                                        parameters: nil,
                                        encoding: JSONEncoding.default,
                                        headers: header)
        request.responseJSON { response in

            if let jsonData = response.data {

                do {
                    let decoder = JSONDecoder()
                    let searchResponse = try decoder.decode(SvrfSearchResponse.self, from: jsonData)

                    success(searchResponse)
                } catch let error {
                    failure(error)
                }
            }
        }
    }

    static private func mapValuesToQueryItems(values: [String: Any?]) -> [URLQueryItem]? {
        let returnValues = values
            .filter { $0.1 != nil }
            .map { (item: (_key: String, _value: Any?)) -> URLQueryItem in
                URLQueryItem(name: item._key, value: "\(item._value!)")
        }
        if returnValues.count == 0 {
            return nil
        }
        return returnValues
    }
}
