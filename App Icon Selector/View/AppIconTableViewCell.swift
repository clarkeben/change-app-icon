//
//  AppIconTableViewCell.swift
//  App Icon Selector
//
//  Created by Ben Clarke on 21/12/2020.
//

import UIKit
import Lottie

class AppIconTableViewCell: UITableViewCell {
    
    @IBOutlet weak var appIconImgView: UIImageView!
    @IBOutlet weak var appIconLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var bgCardView: UIView!
    @IBOutlet weak var animationView: AnimationView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        setUpAnimation()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setupUI() {
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        
        bgCardView.backgroundColor = UIColor.white
        bgCardView.layer.cornerRadius = 8
        bgCardView.layer.masksToBounds = true
        bgCardView.layer.shadowColor = UIColor.black.cgColor
        bgCardView.layer.shadowOffset = .zero
        bgCardView.layer.shadowOpacity = 1.0
    }
    
    private func setUpAnimation() {
        animationView.contentMode = .scaleAspectFit
        animationView.backgroundColor = .clear
    }

    public func playAnimation() {
        animationView.isHidden = false
        animationView.animation = Animation.named("tick")
        animationView.loopMode = .playOnce
        
        animationView.play { (finished) in
            self.animationView.isHidden = true
        }
    }
    
}
