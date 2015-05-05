import Foundation

class BasePresenter<T> {
    var view : T
    
    init(view : T) {
        self.view = view
    }
}