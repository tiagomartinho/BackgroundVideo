import AVFoundation

public class Player {

    let playerLooper: AVPlayerLooper
    let player: AVPlayer

    init(playerLooper: AVPlayerLooper, player: AVPlayer) {
        self.playerLooper = playerLooper
        self.player = player
    }

    public func play() {
        player.play()
    }

    public func pause() {
        player.pause()
    }
}
