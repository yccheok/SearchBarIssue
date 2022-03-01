# SearchBarIssue

I have a `UICollectionView` in red.

When I start to perform searching by entering the 1st character, I expect the result view controller (in yellow) will cover the entire `UICollectionView`.

It should not cover the top navigation bar.

But seems like this is not the case. May I know why?

My code is pretty straightforward.

```
import UIKit

class ViewController: UIViewController {

    lazy var searchController = UISearchController(searchResultsController: ResultVC())
    
    func ResultVC() -> UIViewController {
        let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVC") as UIViewController
        return resultVC
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController

    }
}


extension ViewController: UISearchBarDelegate {
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {

    }
}
```

![0](https://user-images.githubusercontent.com/308276/156109531-5c878a55-aa7d-4c54-9354-6bbae913218b.png)

![1](https://user-images.githubusercontent.com/308276/156109540-9e000854-462d-4aea-9dd4-99ce39266b3f.png)

![2](https://user-images.githubusercontent.com/308276/156109544-54682b6c-926e-4f9e-843c-43b0e0e550d3.png)
