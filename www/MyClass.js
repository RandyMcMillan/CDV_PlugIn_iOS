/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */
//
//  MyClass
//  CDVEmailComposer Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan
//

(function() {
 
 var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
 
 function MyClass(){}
 
 
 
 MyClass.prototype.init = function(success, fail, resultType) {
 
 cordovaRef.exec(success, fail, "MyClass", "init", [resultType]);
 
 }
 
 
 
 
 MyClass.prototype.print = function(success, fail, resultType) {
 
 cordovaRef.exec(success, fail, "MyClass", "print", [resultType]);
 
 }
 
 
 MyClass.prototype.nativePluginResultHandler = function( result ) { console.log(success); }
 
 
 MyClass.prototype.nativePluginErrorHandler = function( error ) { console.log(error); }
 
 
 
 MyClass.install = function()
 {
 if ( !window.plugins ) {
 window.plugins = {};
 }
 if ( !window.plugins.MyClass ) {
 window.plugins.MyClass = new MyClass();
 }
 }
 
 if (cordovaRef && cordovaRef.addConstructor) {
 cordovaRef.addConstructor(MyClass.install);
 } else {
 console.log("MyClass Cordova Plugin could not be installed.");
 return null;
 }
 
 
 })();


/*
 var MyClass = {
 
 callNativeFunction: function (success, fail, resultType) {
 return cordova.exec(success, fail, "MyClass", "nativeFunction", [resultType]);
 }
 }
 */





