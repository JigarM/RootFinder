// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
var label2 = Ti.UI.createLabel({top: 200});
win.add(label);
win.add(label2);
win.open();

// TODO: write your module tests here
var rootfinder = require('com.appersonlabs.root');
Ti.API.info("module is => " + rootfinder);

label.text = 'isrooted ' + rootfinder.isRooted();
label2.text = rootfinder.isBoughtFromAppStore();
