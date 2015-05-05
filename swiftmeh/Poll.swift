import Foundation
import ObjectMapper

class Poll : Mappable{
    var answers : [Answer]?
    var id : String?
    var startDate : String?
    var title : String?
    var topic : Topic?
    
    init() {}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        answers <- map["answers"]
        id <- map["id"]
        startDate <- map["startDate"]
        title <- map["title"]
        topic <- map["topic"]
    }
}