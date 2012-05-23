var MyPlugin = function(){    
};

MyPlugin.prototype.print = function(types,success,fail) {
  
        console.log("Calling phonegap.exec");
        return PhoneGap.exec(success,
                             fail,
                             "MyPlugin",
                             "print",
                             types);  
};

PhoneGap.addConstructor(function(){
                        console.log("adding constructor");
                        PhoneGap.addPlugin("myPlugin", new MyPlugin());
                        
                        
                        /*if(!window.plugins) window.plugins = {}
                        
                        if(!window.plugins.myPlugin)
                        {
                            window.plugins.myPlugin = new MyPlugin();
                        }
                        else
                        {
                            console.log("Not installing myPlugin: already exists");
                            //PhoneGap.addPlugin("myPlugin",new MyPlugin());
                        }*/
});