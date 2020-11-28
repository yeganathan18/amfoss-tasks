let message = "Spam msg! One Last Time"; // Write down you spam msg here!
let interval = 0.5  ; // in seconds 
let iteration = 3 ;  //number of times to send
let a = 0 ;
let spamTimer = setInterval(function(){
	document.getElementsByClassName('composer_rich_textarea')[0].innerHTML = message;
	$('.im_submit_send').trigger('mousedown');	
    a++;
    
	if( a  === iteration )
	clearInterval(spamTimer);
} , interval * 1000 ) ;