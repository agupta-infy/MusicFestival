//
//  FestivalViewModel.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

import UIKit
import Alamofire

class FestivalViewModel{
    
    weak var vc: ViewController?
    var bandArray = [MusicFestivalModel]()
    // MARK: - URL
    private var baseUrl = "http://eacodingtest.digital.energyaustralia.com.au/api/v1/festivals"
    func getMusicFestivalData(){
        AF.request(baseUrl).response { response in
            debugPrint(response)
            if let data = response.data {
                do{
                    let userResponse = try JSONDecoder().decode([MusicFestivalModel].self, from: data)
                    self.bandArray.append(contentsOf: userResponse)
                    DispatchQueue.main.async{
                    self.vc?.tableView.reloadData()
                    }
                }catch let err{
                    print(err.localizedDescription)
                }
            }
        }
    }
}
