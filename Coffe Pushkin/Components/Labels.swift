//
//  Labels.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

class TitleExtraLargeLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.titleExtraLarge.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class TitleLargeLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.titleLarge.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SubtitleLargeLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.subtitleLarge.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class TitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.title.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SubtitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.subtitle.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HeadlineLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.headline.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BodyLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.body.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HeadlineSmallLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.headlineSmall.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BodySmallLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.bodySmall.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CaptionLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.caption.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class FootnoteLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = Fonts.footnote.font
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
