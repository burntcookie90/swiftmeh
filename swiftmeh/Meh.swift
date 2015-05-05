import Foundation
import ObjectMapper

class Meh : Mappable{
    var deal : Deal?
    var poll : Poll?
    var video : Video?
    
    init() {}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        deal <- map["deal"]
        poll <- map["poll"]
        video <- map["video"]
    }
}