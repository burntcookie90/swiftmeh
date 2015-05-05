import Foundation
import ObjectMapper

class Video : Mappable {
    var id : String?
    var startDate : String?
    var title : String?
    var url : String?
    var topic : Topic?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        startDate <- map["startDate"]
        title <- map["title"]
        url <- map["url"]
        topic <- map["topic"]
    }
}