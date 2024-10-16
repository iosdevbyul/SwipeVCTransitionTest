//
//  DeviceStatusView.swift
//  SwipeVCTransitionTest
//
//  Created by COMATOKI on 2024-10-16.
//

import UIKit

enum DeviceStatusType {
    case battery
    case connectionStatus
}

class DeviceStatusView: UIView {

    let iconImage = UIImageView()
    let statusLabel = UILabel()
    let status: DeviceStatusType
    
    init(_ status: DeviceStatusType) {
        self.status = status
        super.init(frame: .zero)
    }
    
    func fetchData() {
        print("fetch data from Realm")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUIs(_ data: String) { //the type of data would be changed
        switch status {
        case .battery:
//            iconImage.image = something
            statusLabel.text = data
        case .connectionStatus:
//            iconImage.image = something
            statusLabel.text = data
        }
    }
    
}
