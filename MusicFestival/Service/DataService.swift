//
//  DataService.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

/*import Foundation
import Alamofire

struct DataService {
    
    // MARK: - Singleton
    static let shared = DataService()
    
    // MARK: - URL
    private var baseUrl = "http://eacodingtest.digital.energyaustralia.com.au/api/v1/festivals"
    
    // MARK: - Services
    func requestFetchPhoto(with id: Int, completion: @escaping (Band?, Error?) -> ()) {
        let url = "\(baseUrl)/\(id)"
        AF.request(url).responsePhoto { response in
            if let error = response.error {
                completion(nil, error)
                return
            }
            if let photo = response.result.value {
                completion(photo, nil)
                return
            }
        }
    }
//    func requestFetchMusicFestivalData() {
//    AF.request(baseUrl).responseJSON { response in
//        debugPrint(response)
//   // func requestFetchMusicFestivalData(with id: Int, completion: @escaping (Error?) -> ()) {
//    //    let url = "\(baseUrl)/\(id)"
//    //    AF.request(url).responsePhoto { response in
//            if let error = response.error {
//                completion(nil, error)
//                return
//            }
//            if let photo = response.result.value {
//                completion(photo, nil)
//                return
//            }
//        }
//    }

}
*/
