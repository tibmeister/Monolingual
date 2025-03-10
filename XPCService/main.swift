//
//  main.swift
//  Monolingual
//
//  Created by Ingmar Stein on 08.04.15.
//
//

import Foundation

final class ServiceDelegate : NSObject, NSXPCListenerDelegate {
	func listener(listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
		newConnection.exportedInterface = NSXPCInterface(withProtocol: XPCServiceProtocol.self)
		let exportedObject = XPCService()
		newConnection.exportedObject = exportedObject
		newConnection.resume()
		return true
	}
}

// Create the listener and resume it
let delegate = ServiceDelegate()
let listener = NSXPCListener.serviceListener()
listener.delegate = delegate;
listener.resume()
