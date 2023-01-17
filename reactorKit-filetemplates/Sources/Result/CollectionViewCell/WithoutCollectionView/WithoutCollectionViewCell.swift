//
//  WithoutCollectionViewCell.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import UIKit

import ReactorKit
import RxCocoa
import RxSwift
import SnapKit
import Then

final class WithoutCollectionViewCell: BaseCollectionViewCell, ReactorKit.View {
    
    typealias Reactor = WithoutCollectionViewCellReactor
    
    private enum Metric {
        static let height: CGFloat = .zero
    }
    
    private enum Color {
    }
    
    private enum Font {
    }
        
    // MARK: Properties
    
    // MARK: UI Views
    
    // MARK: Initializing
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    // MARK: UI Setup
    
    override func addViews() {
        super.addViews()
    }
    
    override func setupViews() {
        super.setupViews()
    }
    
    override func setupConstraints() {
        super.setupConstraints()
    }
    
    // MARK: Binding
    func bind(reactor: Reactor) {
        
        // Action
        
        // State
        
        // View
    }
}

extension WithoutCollectionViewCell {
    class func size(width: CGFloat) -> CGSize {
        CGSize(width: width, height: Metric.height)
    }
}