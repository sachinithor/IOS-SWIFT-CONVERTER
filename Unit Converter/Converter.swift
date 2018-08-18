//
//  Converter.swift
//  Unit Converter
//
//  Created by Admin on 8/18/2561 BE.
//  Copyright © 2561 BE sachini. All rights reserved.
//

import Foundation

class Converter {
    
    static let instance = Converter()
    
    private init() {}
    
    // return kg, pound, ounce
    public func gram(_ gram: String?) -> (String, String, String) {
        if let gramV = Double(gram!){
            return (String(gramV * 0.001), String(gramV * 0.00220462), String(gramV * 0.035274))
        }else{
            return ("", "", "")
        }
    }
    
    //return gram, pound, ounce
    public func kilogram(_ kg: String?) -> (String, String, String) {
        if let kgV = Double(kg!){
            return (String(kgV * 1000), String(kgV * 2.20462), String(kgV * 35.274))
        }else{
            return ("", "", "")
        }
    }
    
    //return gram, kg, ounce
    public func pound(_ pound: String?) -> (String, String, String) {
        if let poundV = Double(pound!){
            return (String(poundV * 453.592), String(poundV * 0.453592), String(poundV * 16))
        }else{
            return ("", "", "")
        }
    }
    
    //return gram, kg, pound
    public func ounce(_ ounce: String?) -> (String, String, String) {
        if let ounceV = Double(ounce!){
            return (String(ounceV * 28.3495), String(ounceV * 0.0283495), String(ounceV * 0.0625))
        }else{
            return ("", "", "")
        }
    }
    
    //return F, K
    public func celsius(_ celsius: String?) -> (String, String) {
        if let celsiusV = Double(celsius!){
            return (String(celsiusV * 1.8 + 32), String(celsiusV + 273.15))
        }else{
            return ("", "")
        }
    }
    
    //return C, K
    public func fahrenheit(_ fahrenheit: String?) -> (String, String) {
        if let fahrenheitV = Double(fahrenheit!){
            return (String((fahrenheitV - 32 ) / 1.8), String((fahrenheitV + 459.67) * (5.0/9.0)))
        }else{
            return ("", "")
        }
    }
    
    //return C, F
    public func kelvin(_ kelvin: String?) -> (String, String) {
        if let kelvinV = Double(kelvin!){
            return (String(kelvinV - 273.15), String((kelvinV * 9.0 / 5.0) - 459.67))
        }else{
            return ("", "")
        }
    }
    
    //return foot, yard, kilometre, mile
    public func metre(_ metre: String?) -> (String, String, String, String) {
        if let metreV = Double(metre!){
            return (String(metreV * 3.28084), String(metreV * 1.09361), String(metreV * 0.001), String(metreV * 0.000621371))
        }else{
            return ("", "", "", "")
        }
    }
    
    //return metre, yard, kilometre, mile
    public func foot(_ foot: String?) -> (String, String, String, String) {
        if let footV = Double(foot!){
            return (String(footV * 0.3048), String(footV * 0.333333), String(footV * 0.0003048), String(footV * 0.000189394))
        }else{
            return ("", "", "", "")
        }
    }
    
    //return metre, foot, kilometre, mile
    public func yard(_ yard: String?) -> (String, String, String, String) {
        if let yardV = Double(yard!){
            return (String(yardV * 0.9144), String(yardV * 3), String(yardV * 0.0009144), String(yardV * 0.000568182))
        }else{
            return ("", "", "", "")
        }
    }
    
    //return metre, foot, yard, mile
    public func kilometre(_ kilometre: String?) -> (String, String, String, String) {
        if let kilometreV = Double(kilometre!){
            return (String(kilometreV * 1000), String(kilometreV * 3280.84), String(kilometreV * 1093.61), String(kilometreV * 0.621371))
        }else{
            return ("", "", "", "")
        }
    }
    
    //return metre, foot, yard, kilometre
    public func mile(_ mile: String?) -> (String, String, String, String) {
        if let mileV = Double(mile!){
            return (String(mileV * 1609.34), String(mileV * 5280), String(mileV * 1760), String(mileV * 1.60934))
        }else{
            return ("", "", "", "")
        }
    }
    
    // return fpm, kph, mph
    public func mps(_ mps: String?) -> (String, String, String) {
        if let mpsV = Double(mps!){
            return (String(mpsV * 196.85), String(mpsV * 3.6), String(mpsV * 2.23694))
        }else{
            return ("", "", "")
        }
    }
    
    // return mps, kph, mph
    public func fpm(_ fpm: String?) -> (String, String, String) {
        if let fpmV = Double(fpm!){
            return (String(fpmV * 0.00508), String(fpmV * 0.018288), String(fpmV * 0.0113636))
        }else{
            return ("", "", "")
        }
    }
    
    // return mps, fpm, mph
    public func kph(_ kph: String?) -> (String, String, String) {
        if let kphV = Double(kph!){
            return (String(kphV * 0.277778), String(kphV * 54.6807), String(kphV * 0.621371))
        }else{
            return ("", "", "")
        }
    }
    
    // return mps, fpm, kph
    public func mph(_ mph: String?) -> (String, String, String) {
        if let mphV = Double(mph!){
            return (String(mphV * 0.44704), String(mphV * 88), String(mphV * 1.60934))
        }else{
            return ("", "", "")
        }
    }
    
}
