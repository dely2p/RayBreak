//
//  ViewController.swift
//  RayBreak
//
//  Created by dely on 2018. 10. 6..
//  Copyright © 2018년 dely. All rights reserved.
//

import UIKit
import MetalKit

enum Colors {
    static let myYellow = MTLClearColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
}

class ViewController: UIViewController {
    var device: MTLDevice!
    var metalView: MTKView {
        return view as! MTKView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        metalView.device = MTLCreateSystemDefaultDevice()
        metalView.clearColor = Colors.myYellow
        device = metalView.device
        guard let renderer = Renderer(device: device) else {
            return
        }
        renderer.draw(in: metalView)
    }
}

