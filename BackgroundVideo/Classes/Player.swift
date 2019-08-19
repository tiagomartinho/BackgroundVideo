import AVFoundation

public class Player {

    @objc public func play() {
        player.play()
    }

    @objc public func pause() {
        player.pause()
    }

    private let playerLooper: AVPlayerLooper
    private let player: AVPlayer
    private let notificationCenter = NotificationCenter.default

    init(playerLooper: AVPlayerLooper, player: AVPlayer) {
        self.playerLooper = playerLooper
        self.player = player
        notificationCenter.addObserver(self, selector: #selector(pause), name: UIApplication.willResignActiveNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(play), name: UIApplication.willEnterForegroundNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(play), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    deinit {
        notificationCenter.removeObserver(self)
    }
}
