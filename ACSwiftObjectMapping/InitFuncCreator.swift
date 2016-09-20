//
//  InitFuncCreator.swift
//  ACSwiftObjectMapping
//
//  Created by Aras Cagli on 20.09.2016.
//  Copyright © 2016 Aras Cagli. All rights reserved.
//

import Foundation

class InitFuncCreator{

    static func createInitFuncwithDict(objectStr: String, keyValue: String, classStr: String, constantValue: String, classType: String) -> String {
        
        var changeStr = classStr
        var dictStr = objectStr
        dictStr = Helper.replaceText(orginalText: dictStr, ofString: objectName, witString: keyValue)
        dictStr = Helper.replaceText(orginalText: dictStr, ofString: clazzName, witString: classType)
        changeStr = Helper.replaceText(orginalText: changeStr, ofString: constantValue, witString: dictStr)
        
        return changeStr
    }
    
    static func createInitFuncWithArray(objectStr: String, keyValue: String, classStr: String, constantValue: String)->String{
        
        var changeStr = classStr
        var dictStr = objectStr
        dictStr = Helper.replaceText(orginalText: dictStr, ofString: objectName, witString: keyValue)
        changeStr = Helper.replaceText(orginalText: changeStr, ofString: constantValue, witString: dictStr)
        return changeStr
    }
    
    static func createInitWithParams(objectStr: String, keyValue: String, classStr: String, constantValue: String, classType: String) -> String{
    
        var changeStr = classStr
        var paramStr = objectStr
        paramStr = Helper.replaceText(orginalText: paramStr, ofString: objectName, witString: keyValue)
        paramStr = Helper.replaceText(orginalText: paramStr, ofString: clazzName, witString: classType)
        
        if changeStr.contains("initFirstParams"){
            changeStr = Helper.replaceText(orginalText: changeStr, ofString: "initFirstParams", witString: paramStr)
        } else {
            changeStr = Helper.replaceText(orginalText: changeStr, ofString: constantValue, witString: ",\(paramStr)")
        }
        
        return changeStr
    }
}
