import UIKit
import Firebase

class Spring: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let array = ["Apple", "Pear"]
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
        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Spring", for: indexPath)

        cell.textLabel!.text = array[indexPath.row]

        return cell
    }

    // Function to store data in Firestore
    func storeDataInFirestore(text: String) {
        firestore.collection("yourCollectionName").addDocument(data: [
            "text": text
        ]) { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                print("Document added successfully")
            }
        }
    }

    // Function to retrieve data from Firestore
    func retrieveDataFromFirestore() {
        firestore.collection("yourCollectionName").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                for document in querySnapshot!.documents {
                    let text = document.data()["text"] as? String ?? ""
                    print("Text from Firestore: \(text)")
                    // You can use the retrieved text as needed
                }
            }
        }
    }
}
