import Foundation
import ObjectMapper

class Item : Mappable{
    var attributes : [AnyObject]?
    var condition : String?
    var id : String?
    var price : Int?
    var photo : String?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        attributes <- map["attributes"]
        condition <- map["condition"]
        id <- map["id"]
        price <- map["price"]
        photo <- map["photo"]
    }
    
}