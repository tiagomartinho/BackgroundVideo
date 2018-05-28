import UIKit
import BackgroundVideo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.add(video: "Video.mp4")
    }
}
