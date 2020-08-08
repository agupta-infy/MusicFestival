//
//  MusicFestivalModel.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

import Foundation
struct MusicFestivalModel : Codable {
    let name : String?
    let bands : [BandModel]?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case bands = "bands"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        bands = try values.decodeIfPresent([BandModel].self, forKey: .bands)
    }

}
