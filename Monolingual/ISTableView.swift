//
//  ISTableView.swift
//  Monolingual
//
//  Created by Ingmar Stein on 27.01.06.
//  Copyright 2006-2014 Ingmar Stein. All rights reserved.
//

import Cocoa

class ISTableView : NSTableView {
	@IBOutlet var arrayController: NSArrayController

	/*
	override func keyDown(theEvent: NSEvent!) {
		var row: Int
		let key = theEvent.charactersIgnoringModifiers.substringToIndex(1)

		switch (key) {
			case " ":
				row = self.selectedRow
				if row != -1 {
					var dict = self.arrayController.arrangedObjects[row] as? NSMutableDictionary
					if let d = dict {
						let enabled = d["Enabled"] as NSNumber
						d["Enabled"] = !enabled.boolValue
					}
				}
			break;
			default:
				super.keyDown(theEvent)
				break;
		}
	}
	*/

}

