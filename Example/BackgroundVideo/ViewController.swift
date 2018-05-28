import UIKit
import BackgroundVideo

class ViewController: UIViewController {

    var looper: VideoLooper?

    override func viewDidLoad() {
        super.viewDidLoad()
        looper = view.add(video: "Video.mp4")
    }
}
