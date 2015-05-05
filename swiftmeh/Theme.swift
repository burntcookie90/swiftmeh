import Foundation
import ObjectMapper

class Theme : Mappable{
    var accentColor : String?
    var foreground : String?
    var backgroundColor : String?
    var backgroundImage : String?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        accentColor <- map["accentColor"]
        foreground <- map["foreground"]
        backgroundColor <- map["backgroundColor"]
        backgroundImage <- map["backgroundImage"]
    }
}
