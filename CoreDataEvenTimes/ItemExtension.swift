import Foundation

extension Item {
    var hasEvenMinutesAndSeconds: Bool {
        let components = Calendar.current.dateComponents([.minute, .second], from: self.timestamp!)

        return (components.minute ?? 0) % 2 == 0 && (components.second ?? 0) % 2 == 0
    }
}
