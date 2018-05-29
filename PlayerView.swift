class PlayerView: UIView {

    var playerLayer: CALayer?

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        playerLayer?.frame = bounds
    }
}
