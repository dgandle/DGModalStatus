//
//  DGModalStatusView.swift
//  DGModalStatus
//
//  Created by Douglas Gandle on 6/12/18.
//  Copyright © 2018 Douglas Gandle. All rights reserved.
//

import UIKit

public class DGModalStatusView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headlineLabel: UILabel!
    @IBOutlet private weak var subheadLabel: UILabel!
    
    let nibName = "AOModalStatusView"
    var contentView: UIView!
    
    // MARK: Set Up View
    public override init(frame: CGRect) {
        // For use in code
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headlineLabel.text = ""
        subheadLabel.text = ""
    }

    // Provide functions to update view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    
    public func set(headline text: String) {
        self.headlineLabel.text = text
    }
    
    public func set(subheading text: String) {
        self.subheadLabel.text = text
    }
    
}
