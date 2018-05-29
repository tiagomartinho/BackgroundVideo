import UIKit
import BackgroundVideo

class ViewController: UIViewController {

    var player: Player?

    override func viewDidLoad() {
        super.viewDidLoad()
        player = view.add(videoName: "Video.mp4", alpha: 0.5)
    }
}
