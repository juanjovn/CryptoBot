//
//  File.swift
//  
//
//  Created by Juanjo Valiño on 25/7/21.
//

import Foundation
import Vapor

public func connectWebSocket() {
    print ("HELLO WORLD")
    let binanceURL = "wss://testnet.binance.vision/ws/btcusdt@trade"
    let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 2)
    WebSocket.connect(to: binanceURL, on: eventLoopGroup, onUpgrade: { ws in
        print(ws)
        ws.onText{ ws, text in
            print(text)
        }
    })
}
