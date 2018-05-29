import UIKit
import BackgroundVideo

class ViewController: UIViewController {

    var looper: PlayerLooper?

    override func viewDidLoad() {
        super.viewDidLoad()
        looper = view.add(videoName: "Video.mp4")
    }
}
