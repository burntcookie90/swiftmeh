import Foundation
import ObjectMapper

class Deal : Mappable{
    var features : String?
    var id : String?
    var items : [Item]?
    var photos : [String]?
    var title : String?
    var soldOutAt : String?
    var specifications : String?
    var story : Story?
    var theme : Theme?
    var url : String?
    var topic : Topic?
    
    init() {}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map){
        features <- map["features"]
        id <- map["id"]
        items <- map["items"]
        photos <- map["photos"]
        title <- map["title"]
        soldOutAt <- map["soldOutAt"]
        specifications <- map["specifications"]
        story <- map["story"]
        theme <- map["theme"]
        url <- map["url"]
        topic <- map["topic"]
    }
}
