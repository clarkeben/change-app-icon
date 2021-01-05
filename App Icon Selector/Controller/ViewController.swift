//
//  ViewController.swift
//  App Icon Selector
//
//  Created by Ben Clarke on 21/12/2020.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "App Icon"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "book"), style: .done, target: self, action: nil)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadLeftToRight()
    }


}

//MARK: - UITableViewDelegate Methods

extension UIViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppIcon.allCases.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AppIconTableViewCell
        
        let appIcons = AppIcon(rawValue: indexPath.row)
        
        cell.imageView?.image = UIImage(named: appIcons?.name ?? "appstore")
        cell.appIconLabel.text = appIcons?.name
        cell.subtitleLabel.text = appIcons?.subtitle
        
        tableView.separatorStyle = .none
        return cell
        
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cell = tableView.cellForRow(at: indexPath) as? AppIconTableViewCell else { return }
        
        let appIcon = AppIcon(rawValue: indexPath.row)
        
        if UIApplication.shared.supportsAlternateIcons {
            AppIconManager.setIcon(appIcon?.name ?? "classic") { (Bool) in
                cell.playAnimation()
            }
            
        } else {
            AppIconManager.doesNotSupport()
            let ac = UIAlertController(title: "Upgrade iOS", message: "Upgrade to iOS 13.0+ to be able to change app icons", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            present(ac, animated: true)
        }
        
    }
    
}

//MARK: - UITableView animation extension

extension UITableView {
    
    public func reloadLeftToRight() {
        self.reloadData()
        let cells = visibleCells
        var delayCounter = 0
        
        for cell in cells {
            cell.frame.origin.x = -cell.frame.width
            
            UIView.animate(withDuration: 0.7, delay: 0.07 * Double(delayCounter), usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                cell.frame.origin.x = 0
            }, completion: nil)
            
            delayCounter += 1
        }
    }
    
    
}

