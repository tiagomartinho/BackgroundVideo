import AVFoundation

extension UIView {
    public func add(video: String) -> PlayerLooper? {
        guard let path = Bundle.main.path(forResource: "Video", ofType:"mp4") else {
            return nil
        }
        let videoURL = URL(fileURLWithPath: path)
        let asset = AVAsset(url: videoURL)
        let item = AVPlayerItem(asset: asset)
        let player = AVQueuePlayer(playerItem: item)
        let videoLooper = AVPlayerLooper(player: player, templateItem: item)
        let playerLayer = AVPlayerLayer(player: player)
        let playerView = PlayerView()
        playerView.playerLayer = playerLayer
        playerLayer.videoGravity = .resizeAspectFill
        playerView.layer.addSublayer(playerLayer)

        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        playerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        playerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        playerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        playerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        player.play()
        return videoLooper
    }
}



