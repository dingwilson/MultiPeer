//
//  MultiPeerDelegate.swift
//  MultiPeer
//
//  Created by Wilson Ding on 2/1/18.
//

import Foundation

/// MultiPeerDelegate
///
/// - Delegate for MultiPeer. Conform to this interface to recieve data and be notified when connection/disconnection events occur
///
/// multiPeer(didRecieveData: Data, ofType: UInt32)
/// multiPeer(connectedDevicesChanged: [String])

public protocol MultiPeerDelegate: class {

    /// didReceiveData: delegate runs on receiving data from another peer
    func multiPeer(didReceiveData data: Data, ofType type: UInt32)

    /// connectedDevicesChanged: delegate runs on connection/disconnection event in session
    func multiPeer(connectedDevicesChanged devices: [String])

}
