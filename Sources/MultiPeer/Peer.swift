//
//  Peer.swift
//  MultiPeer
//
//  Created by Wilson Ding on 2/1/18.
//

import Foundation
import MultipeerConnectivity

// Contains the peerID and state presented to tableview
class Peer {

    var peerID: MCPeerID
    var state: MCSessionState

    init(peerID: MCPeerID, state: MCSessionState) {
        self.peerID = peerID
        self.state = state
    }

}
