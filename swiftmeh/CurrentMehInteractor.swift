import Foundation
import ReactiveCocoa

protocol CurrentMehInteractor {
    func getCurrentMeh() -> Signal<Meh, NoError>
}