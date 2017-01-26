//: Playground - noun: a place where people can play

import UIKit

let picture = UIImage(named: "ball")!
let pictureData = [UIImagePNGRepresentation(picture)!.base64EncodedString()]
let jsonPicture = try! JSONSerialization.data(withJSONObject: pictureData, options: [])
let revivedPictureString = try! JSONSerialization.jsonObject(with: jsonPicture, options: []) as! [String]
let revivedPictureData = Data.init(base64Encoded: revivedPictureString[0], options: [.ignoreUnknownCharacters])!
let revivedPicture = UIImage(data: revivedPictureData)

