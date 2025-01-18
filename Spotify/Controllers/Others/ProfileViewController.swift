//
//  ProfileViewController.swift
//  Spotify
//
//  Created by Alexey Lim on 17/12/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        fetchProfile()
        view.backgroundColor = .systemBackground
        
    }
    
    private func fetchProfile() {
        APICaller.shared.getCurrentUserProfile { result in
            DispatchQueue.main.async {
                self.failedToGetProfile()
            }
        }
    }
    
    private func updateUI(with model: UserProfile) {
        
    }
    
    private func failedToGetProfile() {
        let label = UILabel(frame: .zero)
        label.text = "Failed to load profile"
        label.sizeToFit()
        label.textColor = .secondaryLabel
        view.addSubview(label)
        label.center = view.center
    }
}
