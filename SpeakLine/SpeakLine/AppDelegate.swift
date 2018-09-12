//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Angus Reid on 9/12/18.
//  Copyright © 2018 Angus Reid. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate{

    
    var speechSynth: NSSpeechSynthesizer
    
   
    
    override init(){
        speechSynth = NSSpeechSynthesizer()
        
    }
    
    
    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func stopIt(_ sender: Any) {
        speechSynth.stopSpeaking()
    }
    
    
    @IBAction func sayIt(_ sender: Any) {
        speechSynth.startSpeaking(textField.stringValue)
    }
    
    @IBOutlet weak var textField: NSTextField!
    
    func speechSynthizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool){
        
        
    }
}

