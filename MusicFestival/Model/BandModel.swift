//
//  BandModel.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

import Foundation
import Alamofire

struct BandModel : Codable {
let name : String?
let recordLabel : String?

enum CodingKeys: String, CodingKey {

    case name = "name"
    case recordLabel = "recordLabel"
}

init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    name = try values.decodeIfPresent(String.self, forKey: .name)
    recordLabel = try values.decodeIfPresent(String.self, forKey: .recordLabel)
}
}
