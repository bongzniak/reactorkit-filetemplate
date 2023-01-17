//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift
import RxDataSources
import ReusableKit
import SnapKit
import Then

final class ___VARIABLE_productName___ListCell: BaseCollectionViewCell, ReactorKit.View {

    // MARK: Typealias

    typealias Reactor = ___VARIABLE_productName___ListCellReactor
    typealias RxDataSource = RxCollectionViewSectionedReloadDataSource<___VARIABLE_sectionName___>

    // MARK: Constants

    private enum Metric {
        static let height: CGFloat = 40

        enum CollectionView {
            static let minimumLineSpacing: CGFloat = 10
            static let minimumInteritemSpacing: CGFloat = 10
        }
    }

    private enum Color {
    }

    private enum Font {
    }

    private enum Reusable {
        // static let itemCell = ReusableCell<ItemCell>()
    }

    // MARK: Properties

    var dataSource: RxDataSource!

    // MARK: UI Views

    private let collectionView = UICollectionView(
        frame: CGRect.zero,
        collectionViewLayout: UICollectionViewFlowLayout().then {
            $0.scrollDirection = .horizontal
            $0.minimumLineSpacing = Metric.CollectionView.minimumLineSpacing
            $0.minimumInteritemSpacing = Metric.CollectionView.minimumInteritemSpacing
        }
    )
        .then {
            $0.backgroundColor = .clear
            $0.alwaysBounceHorizontal = true
            $0.showsHorizontalScrollIndicator = false

            // $0.register(Reusable.tagCell)
        }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func addViews() {
        super.addViews()

        addSubview(collectionView)
    }

    override func setupViews() {
        super.setupViews()

        dataSource = dataSourceFactory()
    }

    override func setupConstraints() {
        super.setupConstraints()

        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // MARK: - Binding

    func bind(reactor: Reactor) {

        // State

        reactor.state.map {
                $0.section
            }
            .bind(to: collectionView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)

        // View

        collectionView.rx.setDelegate(self)
            .disposed(by: disposeBag)
    }
}

extension ___VARIABLE_productName___ListCell {
    private func dataSourceFactory() -> RxDataSource {
        RxDataSource(
            configureCell: { [weak self] (dataSource, collectionView, indexPath, sectionItem) -> UICollectionViewCell in
                switch sectionItem {
                }
            }
        )
    }

    private func cellSize(indexPath: IndexPath) -> CGSize {
        let sectionItem = dataSource[indexPath.section].items[indexPath.item]
        switch sectionItem {
        }
    }
}

// MARK: UICollectionViewDelegateFlowLayout

extension ___VARIABLE_productName___ListCell: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        cellSize(indexPath: indexPath)
    }
}

extension ___VARIABLE_productName___ListCell {
    class func size(width: CGFloat) -> CGSize {
        CGSize(width: width, height: Metric.height)
    }
}