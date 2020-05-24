//
//  Labels.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

public class LabelTitle1: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.title1.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class LabelTitle2: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.title2.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class LabelTitle3: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.title3.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class LabelCaption1: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.caption1.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class LabelCaption2: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.caption2.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class LabelCaption3: UILabel {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.caption3.font
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
