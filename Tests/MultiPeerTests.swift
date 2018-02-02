import XCTest
import MultipeerConnectivity
@testable import MultiPeer

class MultiPeerTests: XCTestCase {
    func testPeerConnections() {
        var peer = Peer(peerID: MCPeerID(displayName: "peer"), state: .notConnected)
        XCTAssertEqual(peer.peerID.displayName, "peer")
        XCTAssertEqual(peer.state, .notConnected)

        peer = Peer(peerID: MCPeerID(displayName: "peer"), state: .connecting)
        XCTAssertEqual(peer.state, .connecting)

        peer = Peer(peerID: MCPeerID(displayName: "peer"), state: .connected)
        XCTAssertEqual(peer.state, .connected)
    }

    static var allTests = [
        ("testPeerConnections", testPeerConnections)
    ]
}
