//
//  MatchModel.swift
//  Bet Master Test
//
//  Created by Daniil on 4.08.22.
//

import Foundation
import UIKit

struct Match {
    
    var league: String
    var status: String
    var team1: String
    var team2: String
    var score: String
    var scoreBeforeForecast: String
    var time: String
    var totalScore: String
    
    static func setup() -> [Match] {
        
        let match1 = Match(league: "Russian Division 1", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match2 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match3 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match4 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match5 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match6 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        let match7 = Match(league: "Russian Division 2", status: "LIVE", team1: "Lada SOK Dimitrovgrad", team2: "Real Madrid", score: "0:0", scoreBeforeForecast: "0:0 score before forecast", time: "89' (2 half)", totalScore: "Total over 0.5 the rest of the game")
        
        return [match1, match2, match3, match4, match5, match6, match7]

    }
    
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let listMinimumLineSpacing: CGFloat = 10
    static let listItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.listMinimumLineSpacing / 2)) / 2
}
