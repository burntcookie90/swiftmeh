import Foundation
import ObjectMapper

class Story : Mappable{
    var title : String?
    var body : String?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        body <- map["body"]
    }
}