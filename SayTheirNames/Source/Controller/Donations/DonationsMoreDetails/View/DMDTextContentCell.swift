//
//  DMDTextContentCell.swift
//  SayTheirNames
//
//  Copyright (c) 2020 Say Their Names Team (https://github.com/Say-Their-Name)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

class DMDTextContentCell: UICollectionViewCell {
    
    // MARK: - View
    lazy var contentTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(asset: STNAsset.Color.primaryLabel)
        label.font = UIFont.STN.body
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Class Method
    private func configureSubview() {
        contentView.addSubview(contentTextLabel)
        contentTextLabel.fillSuperview(superView: contentView, padding: .zero)
    }
    
    // MARK: - Configure Cell
    func setContent(text: String) {
        contentTextLabel.text = text
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentTextLabel.text = ""
    }
}
