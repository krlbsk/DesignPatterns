import Foundation

let state = TimeState(date: Date())
let originator = TimeOriginator(state: state)
let caretaker = TimeCaretaker(originator: originator)

DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
    originator.freezeCurrentTime()
    caretaker.save()
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        originator.freezeCurrentTime()
        caretaker.save()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            originator.freezeCurrentTime()
            caretaker.save()
            
            print("Before move back")
            caretaker.showTimeline()
            
            caretaker.moveBack()
            
            print("After move back")
            caretaker.showTimeline()
        }
    }
}
