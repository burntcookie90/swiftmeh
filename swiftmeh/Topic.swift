import Foundation
import ObjectMapper

class Topic : Mappable{
    var commentCount : Int?
    var createdAt : String?
    var id : String?
    var replyCount : Int?
    var url : String?
    var voteCount : Int?
    
    init(){}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        commentCount <- map["commentCount"]
        createdAt <- map["createdAt"]
        id <- map["id"]
        replyCount <- map["replyCount"]
        url <- map["url"]
        voteCount <- map["voteCount"]
    }
}
