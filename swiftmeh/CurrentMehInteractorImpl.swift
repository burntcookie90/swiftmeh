import Foundation
import ReactiveCocoa
import Alamofire
import AlamofireObjectMapper
import LlamaKit

class CurrentMehInteractorImpl : CurrentMehInteractor {
    init() {
        
    }
    
    func getCurrentMeh() -> Signal<Meh, NoError> {
        let signal = Signal<Meh, NoError>{ observable in
            
            Alamofire.request(.GET, "https://api.meh.com/1/current.json", parameters: ["apikey": "HnNIlj6P8dpi47IC7cnFBC3bxfcqBw7l"])
                .responseObject { (response: Meh?, error: NSError?) in
                    observable.put(.Next(Box(response!)))
            }
            
            return nil
        }
        
        return signal
    }
}