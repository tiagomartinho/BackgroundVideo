import AVFoundation

extension UIView {
    
    public func add(videoName: String, alpha: CGFloat = 1.0) -> Player? {

        guard let path = PathExtractor.extract(from: videoName) else {
            return nil
        }

        return add(videoPath: path, alpha: alpha)
    }

    public func add(videoPath path: String, alpha: CGFloat = 1.0) -> Player? {
        let item = buildPlayerItem(path: path)
        let player = AVQueuePlayer(playerItem: item)
        let playerLayer = AVPlayerLayer(player: player)

        let playerView = buildPlayerView(playerLayer: playerLayer)
        playerView.alpha = alpha
        add(playerView)

        let playerLooper = AVPlayerLooper(player: player, templateItem: item)
        return Player(playerLooper: playerLooper, player: player)
    }

    private func buildPlayerItem(path: String) -> AVPlayerItem {
        let videoURL = URL(fileURLWithPath: path)
        let asset = AVAsset(url: videoURL)
        return AVPlayerItem(asset: asset)
    }

    private func buildPlayerView(playerLayer: AVPlayerLayer) -> PlayerView {
        let playerView = PlayerView()
        playerView.playerLayer = playerLayer
        playerLayer.videoGravity = .resizeAspectFill
        playerView.layer.addSublayer(playerLayer)
        return playerView
    }

    private func add(_ playerView: UIView) {
        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        playerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        playerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        playerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        playerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
