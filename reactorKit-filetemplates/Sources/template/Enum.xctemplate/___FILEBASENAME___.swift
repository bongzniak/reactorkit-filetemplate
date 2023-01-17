//___FILEHEADER___

enum ___VARIABLE_productName___: String, Codable {
    case none = "NONE"
    
    init(from decoder: Decoder) throws {
        self = try ___VARIABLE_productName___(rawValue: decoder.singleValueContainer().decode(RawValue.self)) ?? .none
    }
}