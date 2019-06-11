//
//  SvrfFaceFilter.swift
//  SvrfSDK
//
//  Created by Jesse Boyes on 6/11/19.
//  Copyright © 2019 Andrey Evstratenko. All rights reserved.
//

import Foundation
import SceneKit
import ARKit

public class SvrfFaceFilter: NSObject, CAAnimationDelegate {
    public var looping: Bool = true

    public var node: SCNNode?

    // swiftlint:disable line_length
    /**
     Blend shape mapping allows Svrf's ARKit compatible face filters to have animations that
     are activated by your user's facial expressions.

     - Attention: This method enumerates through the node's hierarchy.
     Any children nodes with morph targets that follow the
     [ARKit blend shape naming conventions](https://developer.apple.com/documentation/arkit/arfaceanchor/blendshapelocation) will be affected.
     - Note: The 3D animation terms "blend shapes", "morph targets", and "pose morphs" are often used interchangeably.
     - Parameters:
     - blendShapes: A dictionary of *ARFaceAnchor* blend shape locations and weights.
     */
    // swiftlint:enable line_length
    public func setBlendShapes(blendShapes: [ARFaceAnchor.BlendShapeLocation: NSNumber]) {

        DispatchQueue.main.async {
            if let node = self.node {
                node.enumerateHierarchy({ (subNode, _) in
                    if subNode.morpher?.targets != nil {
                        subNode.enumerateHierarchy { (childNode, _) in
                            for (blendShape, weight) in blendShapes {
                                let targetName = blendShape.rawValue
                                childNode.morpher?.setWeight(CGFloat(weight.floatValue), forTargetNamed: targetName)
                            }
                        }
                    }
                })
            }
        }
    }

}
