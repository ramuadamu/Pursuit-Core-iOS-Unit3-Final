//
//  ViewController.swift
//  Elements
//
//  Created by Alex Paul on 12/31/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private var elements = [Element]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
              
            }
        }
    }
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    fetchElements()
    tableView.delegate = self
  }
    
    private func fetchElements() {
        ElementAPIClient.fetchElements { (appError, elements) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let elements = elements {
                self.elements = elements
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let elementDetailViewController = segue.destination as? ElementDetailViewController else {
              fatalError("indexPath, detailVC nil")
        }
        let element = elements[indexPath.row]
        elementDetailViewController.element = element

}
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "ElementCell", for: indexPath) as! ElementTableViewCell
        let element = elements[indexPath.row]
        cell.elementName.text = element.name
        cell.elementSymbol.text = element.symbol
        cell.elements = element
        cell.fetchThumbImage()
        return cell
       }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

