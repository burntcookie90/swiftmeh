import Foundation
import ObjectMapper

class Answer : Mappable{
    var id : String?
    var text : String?
    var voteCount : Int?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        text <- map["text"]
        voteCount <- map["voteCount"]
    }
}
