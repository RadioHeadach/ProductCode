//
//  DiaryLabel.swift
//  Diary
//
//  Created by ROOSTERLIN on 2019/1/29.
//  Copyright © 2019年 ROOSTERLIN. All rights reserved.
//

import UIKit

func sizeHeightWithText(labelText: String,
                        fontSize: CGFloat,
                        textAttributes: [NSString: AnyObject]) -> CGRect {
    return labelText.boundingRect(
        with: CGSize(width:fontSize, height:480),
        options: NSStringDrawingOptions.usesLineFragmentOrigin,
        attributes: textAttributes, context: nil)
}

class DiaryLabel: UILabel {
    
    var textAttributes: [String: AnyObject]!
    
    convenience init(fontname: String,
                     labelText: String,
                     fontSize: CGFloat,
                     lineHeight: CGFloat) {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        let font = UIFont(name: fontname, size: fontSize) as UIFont!
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineHeight;
        
        textAttributes = [NSFontAttributeName: font!,
                          NSParagraphStyleAttributeName: paragraphStyle]
        
    }
    


}
