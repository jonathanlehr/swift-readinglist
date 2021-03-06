// Copyright (C) 2018 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this example's licensing information.
//
import UIKit
import ReadingListModel

class EditBookController: UITableViewController
{
    var book: Book?
    
    @IBOutlet private weak var titleField: UITextField!
    @IBOutlet private weak var yearField: UITextField!
    @IBOutlet private weak var firstNameField: UITextField!
    @IBOutlet private weak var lastNameField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshData()
    }
    
    private func refreshData() {
        titleField.text = book?.title
        yearField.text = book?.year
        firstNameField.text = book?.author?.firstName
        lastNameField.text = book?.author?.lastName
    }
    
    private func updateModel() {
        book?.title = titleField.text
        book?.year = yearField.text
        book?.author?.firstName = firstNameField.text
        book?.author?.lastName = lastNameField.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == UIStoryboardSegue.Identifiers.done {
            updateModel()
        }
    }
}
