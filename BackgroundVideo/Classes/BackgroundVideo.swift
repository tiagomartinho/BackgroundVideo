import AVFoundation

extension UIView {
    public func add(video: String) {
        guard let path = Bundle.main.path(forResource: "Video", ofType:"mp4") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        let playerLayer = AVPlayerLayer(player: player)
        layer.addSublayer(playerLayer)
        playerLayer.frame = bounds
        player.play()
    }
}
