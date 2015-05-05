import UIKit

class ViewController: UIViewController, MainView {
    var presenter : MainPresenter!

    @IBOutlet weak var titleLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        presenter = MainPresenterImpl<MainView>(view: self)
        presenter.retrieveCurrentMeh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func populatePage(currentMeh: Meh) {
        titleLabel.text = currentMeh.deal?.title
    }

}

