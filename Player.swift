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
        notificationCenter.addObserver(self, selector: #selector(pause), name: Notification.Name.UIApplicationWillResignActive, object: nil)
        notificationCenter.addObserver(self, selector: #selector(play), name: Notification.Name.UIApplicationWillEnterForeground, object: nil)
        notificationCenter.addObserver(self, selector: #selector(play), name: Notification.Name.UIApplicationDidBecomeActive, object: nil)
    }

    deinit {
        notificationCenter.removeObserver(self)
    }
}
