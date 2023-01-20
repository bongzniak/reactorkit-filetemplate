//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift
import RxDataSources
import ReusableKit
import SnapKit
import Then

final class ___VARIABLE_productName___View: BaseView {
    
    typealias RxDataSource = RxCollectionViewSectionedReloadDataSource<___VARIABLE_sectionName___>
    
    private enum Metric {
        enum CollectionView {
            static let contentInset: UIEdgeInsets = UIEdgeInsets(
                top: 12,
                left: 24,
                bottom: 12,
                right: 24
            )
        }
    }
    
    private enum Color {   
    }
    
    private enum Font {    
    }
    
    private enum Localized {
    }
    
    private enum Reusable {
        // static let sectionItemCell = ReusableCell<SectionItemCell>()
    }
    
    // MARK: Properties

    var dataSource: RxDataSource!
    let sections = PublishRelay<[___VARIABLE_sectionName___]>()
    
    // MARK: UI
    let refreshControl = UIRefreshControl()
    let collectionView = UICollectionView(
        frame: CGRect.zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    ).then {
        $0.showsVerticalScrollIndicator = false
        $0.showsHorizontalScrollIndicator = false
        $0.isScrollEnabled = true
        $0.backgroundColor = .clear
        $0.contentInset = Metric.CollectionView.contentInset
        
        // $0.register(Reusable.sectionItemCell)
    }
    
    // MARK: Initializing
    
    override init() {
        super.init()
        
        dataSource = dataSourceFactory()

        bind()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UI Setup
    
    override func addViews() {
        super.addViews()

        addSubview(collectionView)
    }
    
    override func setupViews() {
        super.setupViews()

        collectionView.refreshControl = refreshControl
    }

    override func setupConstraints() {
        super.setupConstraints()

        collectionView.snp.makeConstraints {
            $0.edges.equalTo(safeAreaLayoutGuide)
        }
    }

    private func bind() {
        collectionView.rx.setDelegate(self)
            .disposed(by: self.disposeBag)
        
        sections
            .asDriver(onErrorJustReturn: [])
            .drive(collectionView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
}

extension ___VARIABLE_productName___View {
    private func dataSourceFactory() -> RxDataSource {
        RxDataSource(
            configureCell: { [weak self] (dataSource, collectionView, indexPath, sectionItem) -> UICollectionViewCell in
                switch sectionItem {
                }
            }
        )
    }
}


// MARK: UICollectionViewDelegateFlowLayout

extension ___VARIABLE_productName___View: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        cellSize(indexPath: indexPath)
    }
    
    private func cellSize(indexPath: IndexPath) -> CGSize {
        let sectionItem = dataSource[indexPath.section].items[indexPath.item]
        switch sectionItem {
        }
    }
}

extension ___VARIABLE_productName___View {
    class func instance() -> ___VARIABLE_productName___View {
        ___VARIABLE_productName___View()
    } 
}
