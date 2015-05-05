import Foundation

class MainPresenterImpl<T> : BasePresenter<MainView>, MainPresenter {
    private var currentMehInteractor : CurrentMehInteractorImpl
    
    override init(view: MainView){
        self.currentMehInteractor = CurrentMehInteractorImpl()
        super.init(view : view)
    }
    
    func retrieveCurrentMeh() {
        currentMehInteractor.getCurrentMeh()
        .observe(next: { meh in
            self.view.populatePage(meh)
        })
    }
        
}
