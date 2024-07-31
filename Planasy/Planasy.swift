//
//  Planasy.swift
//  Planasy
//
//  Created by Nicholas Johnson on 7/31/24.
//

import Foundation
import SwiftData

@Model
class Planasy {
    var id: UUID
    var fiveYear: String
    var oneYear: String
    var oneMonth: String
    var oneWeek: String
    var oneDay: String
    
    init(id: UUID, fiveYear: String, oneYear: String, oneMonth: String, oneWeek: String, oneDay: String) {
        self.id = id
        self.fiveYear = fiveYear
        self.oneYear = oneYear
        self.oneMonth = oneMonth
        self.oneWeek = oneWeek
        self.oneDay = oneDay
    }
    
    static var new: Planasy {
        return Planasy(id: UUID(), fiveYear: "", oneYear: "", oneMonth: "", oneWeek: "", oneDay: "")
    }
    
    static var example: Planasy {
        return Planasy(id: UUID(), fiveYear: "Get a nice house in the woods", oneYear: "Get a nice job that pays well", oneMonth: "Get 10 life design interviews", oneWeek: "Doe a few sessions", oneDay: "Finish a lesson")
    }
}
