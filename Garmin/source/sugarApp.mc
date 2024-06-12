using Toybox.Application;
using Toybox.Lang;
using Toybox.WatchUi;
using Toybox.Communications;
using Toybox.System;

var string = "";
var phoneMethod;

class sugarApp extends Application.AppBase {

    function initialize() {
        Application.AppBase.initialize();

        phoneMethod = method(:onPhone);
        if(Communications has :registerForPhoneAppMessages) {
            Communications.registerForPhoneAppMessages(phoneMethod);
        } else {
            var hasDirectMessagingSupport = false;
        }
    }

    function onPhone(msg) {
        string = msg.data.toString();
        System.println("received message");
        System.println(msg);
        WatchUi.requestUpdate();
    }
    // onStart() is called on application start up
    function onStart(state) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ new sugarView() ];
    }

}

function getApp() as sugarApp {
    return Application.getApp() as sugarApp;
}