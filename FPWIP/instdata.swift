//
//  instdata.swift
//  FPWIP
//
//  Created by Cole Perry on 3/30/23.
//

import Foundation

//var MusicPoints:[CGPoint] = [a,b,c]
var allgames:[games] = [game1,game2,game3,game4]


//var testG:[City] = [city1, city2]
//
//struct City {
//    var image:String = ""
//    var name:String = ""
//
//    init(image: String, name: String){
//        self.image = image
//        self.name = name
//    }
//}


class games{
    var gameName: String
    var gameDisplay: String
    var instrumentUsed: String
    var score: Int
    var noteSpacing: [CGPoint]
    var music: String
    var noteDelay: Double
    var hardmodePic: String
    var hardModeMusic: String
    var ishardMode: Bool
    init(gameName: String, gameDisplay: String, instrumentUsed: String, score: Int, noteSpacing: [CGPoint],music: String,noteDelay: Double, hardmodePic: String, hardModeMusic: String, ishardMode: Bool) {
        self.gameName = gameName
        self.gameDisplay = gameDisplay
        self.instrumentUsed = instrumentUsed
        self.score = score
        self.noteSpacing = noteSpacing
        self.music = music
        self.noteDelay = noteDelay
        self.hardmodePic = hardmodePic
        self.hardModeMusic = hardModeMusic
        self.ishardMode = ishardMode
    }
    
}

var game1 = games(gameName: "Guitar Jam", gameDisplay: "strings1", instrumentUsed: "pick1", score: 0, noteSpacing: [a,b,c], music: "gutar", noteDelay: randelay, hardmodePic: "hardGuitar", hardModeMusic: "hardmodeGuitar", ishardMode: false)
var game2 = games(gameName: "Drum Pow", gameDisplay: "dRUM", instrumentUsed: "stik", score: 0, noteSpacing: [d,r,m], music: "DRUMMMM", noteDelay: dRumDelay, hardmodePic: "hardDRum", hardModeMusic: "MenacingDrum", ishardMode: false)
var game3 = games(gameName: "Drum Bum", gameDisplay: "pick1", instrumentUsed: "ukeSK2", score: 0, noteSpacing: [a,b,c], music: "", noteDelay: 0.0, hardmodePic: "", hardModeMusic: "", ishardMode: false)
var game4 = games(gameName: "Vocals Quarrel", gameDisplay: "pick1", instrumentUsed: "ukeSK2", score: 0, noteSpacing: [a,b,c], music: "", noteDelay: 0.0, hardmodePic: "", hardModeMusic: "", ishardMode: false)

//var kingsGame = games(gameName: "", gameDisplay: <#T##String#>, instrumentUsed: <#T##String#>, score: <#T##Int#>, noteSpacing: <#T##[CGPoint]#>, music: <#T##String#>, noteDelay: <#T##Double#>, hardmodePic: <#T##String#>, hardModeMusic: <#T##String#>, ishardMode: <#T##Bool#>)

var randelay = Double.random(in: 2...5)
var dRumDelay = Double.random(in: 1...2)

var a = CGPoint(x: 168.0, y: 341.0)
var b = CGPoint(x: 68.0, y: 495.0)
var c = CGPoint(x: 269.0, y: 443.0)

var d = CGPoint(x: 228, y: 445)
var r = CGPoint(x: 97, y: 567)
var m = CGPoint(x: 33, y: 429)



//var city1 = City(image: "one", name: "yes")
//var city2 = City(image: "two", name: "mhm")
var k = CGPoint(x: 228, y: 445)
var i = CGPoint(x: 97, y: 567)
var n = CGPoint(x: 33, y: 429)
var g = CGPoint(x: 33, y: 429)
