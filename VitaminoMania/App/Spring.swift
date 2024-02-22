import UIKit
import Firebase

class Spring: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruits = ["apple", "strawberry", "cherry", "pear"]
    let images = [#imageLiteral(resourceName: "apple"), #imageLiteral(resourceName: "pear"), #imageLiteral(resourceName: "strawberry"), #imageLiteral(resourceName: "cherry")]
    var firestore: Firestore!
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Firestore
        firestore = Firestore.firestore()
        
        // Set up table view
        tableView.dataSource = self
        tableView.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Spring", for: indexPath)

        cell.textLabel!.text = fruits[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = fruits[indexPath.row]
        let storyboardName: String
        let viewControllerIdentifier: String
        
        // Determine the storyboard and view controller identifier based on the selected item
        switch selectedItem {
        case "Item 1":
            storyboardName = "AppleSpring"
            viewControllerIdentifier = "AppleSpring"
        case "Item 2":
            storyboardName = "StrawberrySpring"
            viewControllerIdentifier = "StrawberrySpring"
        case "Item 3":
            storyboardName = "CherrySpring"
            viewControllerIdentifier = "CherrySpring"
        case "Item 4":
            storyboardName = "PearSpring"
            viewControllerIdentifier = "PearSpring"
        default:
            storyboardName = "main"
            viewControllerIdentifier = "Main"
        }
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let destinationViewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
