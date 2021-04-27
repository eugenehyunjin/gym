<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화상수업</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <script src="https://www.gstatic.com/firebasejs/8.4.2/firebase-app.js"></script>


<script src="https://www.gstatic.com/firebasejs/8.4.2/firebase-analytics.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	

	
	function fncancle(){
		
		location.href='${contextPath}/blog.do';
	} 
	

	
</script>



<style>

   body{
      background-color: black;
      }
      
      
      video {
        background-color: #ddd;
        border-radius: 7px;
        margin: 20px;
        width: auto;
        height: auto;
      }
      button {
        margin: 5px 0px 0px 10px;
       	text-align:center;
       	width: 60px;
      }   
    
	
	h2{
		font-weight: 1000;
	}
	
	h2, h3{
		color: white;
		margin-bottom: 10px;
		margin-top: 30px;
	}
		
	#contents{
	font-size: 30px;
		color: white;
	}
		
	
	.btn {
		clear:both;
		width:50%;
		display: inline-flex;
		background-color:#f36100;
		text-align:center;
	}
	
	
</style>


</head>
<body>

<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb-text">
						<h2>화상수업</h2>
						<div class="bt-option">
							<a href="./main.do">Home</a>
							<a href="#">Pages</a>
							<span>화상수업</span>
						</div>
					</div>
				</div>
	    	</div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
 <br>
 <br>
 <br>
 <br>
  <body onload="showMyFace()" style="text-align: center; ">
   
    <video id="yourVideo" autoplay muted playsinline></video>
    <video id="friendsVideo" autoplay muted playsinline></video>
    <br />
    <br><br>
    <button onclick="showFriendsFace()" type="button" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>&nbsp;&nbsp;  Call</button>
    <script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
 
  </body>
<br><br>
<script language = "javascript">
//Create an account on Firebase, and use the credentials they give you in place of the following
var config = {
		apiKey: "AIzaSyC2tw3oQRa1tt_bn5ywyRFbsZSjFfdzK6U",
	    authDomain: "ezen-gym.firebaseapp.com",
	    databaseURL: "https://ezen-gym-default-rtdb.firebaseio.com",
	    projectId: "ezen-gym",
	    storageBucket: "ezen-gym.appspot.com",
	    messagingSenderId: "1076982614942",
	    appId: "1:1076982614942:web:56bf53edb2d0043dfc248f",
	    measurementId: "G-M2QHH640SJ"
};
 
 
firebase.initializeApp(config);

 
var database = firebase.database().ref();
var yourVideo = document.getElementById("yourVideo");
var friendsVideo = document.getElementById("friendsVideo");
var yourId = Math.floor(Math.random()*1000000000);
//Create an account on Viagenie (http://numb.viagenie.ca/), and replace {'urls': 'turn:numb.viagenie.ca','credential': 'websitebeaver','username': 'websitebeaver@email.com'} with the information from your account
 
 
//var servers = {'iceServers': [{'urls': 'stun:stun.services.mozilla.com'}, {'urls': 'stun:stun.l.google.com:19302'}, {'urls': 'turn:numb.viagenie.ca','credential': 'beaver','username': 'webrtc.websitebeaver@gmail.com'}]};
//var servers = {'iceServers': [{'urls': 'turn:13.250.13.83:3478?transport=udp','YzYNCouZM1mhqhmseWk6': 'beaver','YzYNCouZM1mhqhmseWk6': 'webrtc.websitebeaver@gmail.com'}]};
 
// 아래 서버정보는 https://gist.github.com/sagivo/3a4b2f2c7ac6e1b5267c2f1f59ac6c6b  에서 참고했음
var servers = {"urls": ["turn:13.250.13.83:3478?transport=udp"],"username": "YzYNCouZM1mhqhmseWk6","credential": "YzYNCouZM1mhqhmseWk6"}
var pc = new RTCPeerConnection(servers);
pc.onicecandidate = (event => event.candidate?sendMessage(yourId, JSON.stringify({'ice': event.candidate})):console.log("Sent All Ice") );
pc.onaddstream = (event => friendsVideo.srcObject = event.stream);
 
function sendMessage(senderId, data) {
    var msg = database.push({ sender: senderId, message: data });
    msg.remove();
}
 
function readMessage(data) {
    var msg = JSON.parse(data.val().message);
    var sender = data.val().sender;
    if (sender != yourId) {
        if (msg.ice != undefined)
            pc.addIceCandidate(new RTCIceCandidate(msg.ice));
        else if (msg.sdp.type == "offer")
            pc.setRemoteDescription(new RTCSessionDescription(msg.sdp))
              .then(() => pc.createAnswer())
              .then(answer => pc.setLocalDescription(answer))
              .then(() => sendMessage(yourId, JSON.stringify({'sdp': pc.localDescription})));
        else if (msg.sdp.type == "answer")
            pc.setRemoteDescription(new RTCSessionDescription(msg.sdp));
    }
};
 
database.on('child_added', readMessage);
 
function showMyFace() {
  navigator.mediaDevices.getUserMedia({audio:true, video:true})
    .then(stream => yourVideo.srcObject = stream)
    .then(stream => pc.addStream(stream));
}
 
function showFriendsFace() {
  pc.createOffer()
    .then(offer => pc.setLocalDescription(offer) )
    .then(() => sendMessage(yourId, JSON.stringify({'sdp': pc.localDescription})) );
}    
  </script>
</html>