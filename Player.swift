import AVFoundation

public class Player {

    public func play() {
        player.play()
    }

    public func pause() {
        player.pause()
    }

    private let playerLooper: AVPlayerLooper
    private let player: AVPlayer
    private let notificationCenter = NotificationCenter.default

    init(playerLooper: AVPlayerLooper, player: AVPlayer) {
        self.playerLooper = playerLooper
        self.player = player
        notificationCenter.addObserver(self, selector: #selector(applicationWillResignActive), name: Notification.Name.UIApplicationWillResignActive, object: nil)
        notificationCenter.addObserver(self, selector: #selector(applicationWillEnterForeground), name: Notification.Name.UIApplicationWillEnterForeground, object: nil)
    }

    deinit {
        notificationCenter.removeObserver(self)
    }

    @objc private func applicationWillResignActive() {
        pause()
    }

    @objc private func applicationWillEnterForeground() {
        play()
    }
}
