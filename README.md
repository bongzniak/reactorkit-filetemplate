# reactorkit-filetemplate

## ReactorKit에서 사용하기 위한 filetemplate
### 1. ViewController
#### [ViewController + ViewReactor + View + Coordinator]
![1629AA0A-4EA7-4DC9-839B-CE1CB0FF0432](https://user-images.githubusercontent.com/76252915/212968566-cf8fa99c-a7bf-47c7-9fdc-0e259f4cc6c4.png)
-  UICollectionView를 포함하는 ViewController
    - Section를 먼저 생성 후 진행하기를 추천(에러 발생 방지)
-  UICollectionView를 포함하지 않는 ViewController

### 2. CollectionViewCell
#### [CollectionViewCell+ CollectionViewCellReactor]
![07A3742D-0DB2-4DCB-B2BD-28D377B68FCC](https://user-images.githubusercontent.com/76252915/212968868-82d0b105-3fce-4de7-a1b8-3f177a1d9450.png)
-  UICollectionView를 포함하는 CollectionViewCell
    - Section를 먼저 생성 후 진행하기를 추천(에러 발생 방지)
-  UICollectionView를 포함하지 않는 CollectionViewCell

### 3. Network
#### [API + Service]

### 4. Section(RxDataSource)

### 5. Enum

### 6. Analytics(Umbrella)

# install
- /Sources/template/install-reactorkit-template.sh 실행
![23505F11-FF4E-4310-A32D-8B71B53F284A](https://user-images.githubusercontent.com/76252915/212968279-07ca6d34-f63b-4503-abca-2fff7e571c2b.png)

