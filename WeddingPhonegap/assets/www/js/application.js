   $( document ).bind( "mobileinit", function() {
	            // Make your jQuery Mobile framework configuration changes here!
	            $.mobile.allowCrossDomainPages = true;
	            $.mobile.ajaxEnabled = true;
	            $.mobile.pushStateEnabled = false;
	            $.support.touchOverflow = true;
	            $.mobile.page.prototype.options.degradeInputs.date = true;
	});
   
   function back() {
	    navigator.app.backHistory();
	}
   
	function showLoding() {
		//$.mobile.loading('show')
	}
	
	function hideLoding() {
		//$.mobile.loading('hide')
	}
	
   function isEmpty(str) {
  		if (str === undefined || str == null) {
  			return true;
  		}
  		var value = str.toString().replace(/^\s+|\s+$/, '');
  		return (value === undefined || value == null || value.length <= 0) ? true
  				: false;
	}
	 
	 function onLoad()     {
          document.addEventListener("deviceready", onDeviceReady, true);
     }

     function onDeviceReady()
     {
           navigator.notification.alert("PhoneGap is working");
     }

     function login() { 
    	window.localStorage.setItem("page", "weddinglist.html");
        window.location = "login.html";
     }
     
     function signUp() {
    	 window.localStorage.setItem("page", "weddinglist.html");
    	 window.location = "signup.html";
     }
     
     function home() {
    	 window.location = "home.html";
     }
     
     function albums() {
    	 window.location = "weddinglist.html";
     }
     
     function signout() {
    	 window.localStorage.clear();
    	 window.location = "home.html";
     }
   

	 