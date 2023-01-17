//
//  CommonType.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

enum CommonType: String, Codable {
    case none = "NONE"
    
    init(from decoder: Decoder) throws {
        self = try CommonType(rawValue: decoder.singleValueContainer().decode(RawValue.self)) ?? .none
    }
}