//
//  ViewController.swift
//  QuickActionsPicker
//
//  Created by Yuri Karabatov on 23/11/2018.
//  Copyright © 2018 Yuri Karabatov. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

final class ViewController: UIViewController {
    @IBOutlet private var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTapped() {
        let rows = ["10 g", "100 g"]

        ActionSheetStringPicker.show(
            withTitle: "Tomato",
            rows: rows,
            initialSelection: 1,
            doneBlock: { [weak self] picker, index, value in
                self?.button.setTitle(rows[index], for: UIControl.State.normal)
            },
            cancel: { picker in
                // Do nothing
            },
            origin: button
        )
    }
}

