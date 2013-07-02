<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@page import="com.imayam.music.DataAccess"%>
<%@page import="com.imayam.music.ControllerServlet"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<% 

String playString = "";
String search="";
String display = "";
String userShuffle = (String) request.getParameter("shuffle");
String userAction = (String) request.getParameter("action");
String searchartist = (String) request.getParameter("searchartist");
String artist = (String) request.getParameter("artist");
String moviesearch = (String) request.getParameter("moviesearch");
%>

<html>
<head>
<% if (artist != null) { %>
	<title><%= artist %> : Imayam Tamil Songs</title>
<%} else if (searchartist != null){ %>
	<title><%= searchartist %> : Imayam Tamil Songs</title>
<%} else { %>
	<title>Imayam Tamil Songs</title>
<% } %>

<META HTTP-EQUIV="expires" CONTENT="Thu, 31 Dec 2020 23:59:59 GMT">


        <meta http-equiv="cache-control" content="private" />
        <META HTTP-EQUIV="ACCEPT-ENCODING" CONTENT="gzip, delate" />
	<META NAME="keywords" content="tamil songs online, listen to tamil songs, songs, tamil, movie, songs no firewall issues, aalwar, pokkiri, aalvar, aazhwar, aazhvar, top 10, top 10 songs, imayam top 10, songs, kuselan">
	<META NAME="keywords" content="Yuvan, Yuvan Shankar Raja, Poovellam Kettupaar, g v prakasah">
	<META NAME="description" content="Listen to Tamil Songs Online">
	<link rel=stylesheet type="text/css" href="../../style.css">
  <%@ include file="/ajax.jsp" %>  

<script type="text/javascript" 
  src="/isai/songs/radio/js/quicktime/jquery-1.2.3.pack.js"></script>
<script type="text/javascript" 
  src="/isai/songs/radio/js/quicktime/jquery.embedquicktime.js"></script>
<script type="text/javascript">
  jQuery.noConflict();
  jQuery(document).ready(function() {
    jQuery.embedquicktime({
      jquery: '/isai/songs/radio/js/quicktime/jquery-1.2.3.pack.js', 
      plugin: '/isai/songs/radio/js/quicktime/jquery.embedquicktime.js'
    });
  });
</script>

<script>
    function keepMeAlive(imgName) {
       myImg = document.getElementById(imgName);
       if (myImg) myImg.src = myImg.src.replace(/\?.*$/, '?' + Math.random());
    }
    window.setInterval("keepMeAlive('keepAliveIMG')", 100000);
</script>

<style>
div.ex
{
width:220px;
padding:10px;
border:5px solid gray;
margin:0px;
}
</style>

</head>

<body background="/isai/songs/design/pagebg.jpg" bottommargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" topmargin="0" >

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<c:if test="${sessionScope.popcheck == null}">

<c:set var="popcheck" value="yesdone" scope="session" />

</c:if>

<center>

<jsp:include page="/header.jsp" />

<table width="776" cellpadding="0" cellspacing="0" border="0" background="/isai/songs/design/mainbg.jpg">
	<tr valign="top">
		<td width="22">&nbsp;</td>
		<td width="732">

<table width="732" cellpadding="0" cellspacing="0" border="0">
<tr valign="top">

<td width="156"><table width="156" height="24" cellpadding="0" cellspacing="0" border="0" background="/isai/songs/design/menutop.jpg"><tr valign="middle"><td align="center"><div style="padding-top:6px;padding-left:18px "><span class="style1">Collections</span></div></td></tr></table><table width="156" cellpadding="0" cellspacing="0" border="0" bgcolor="#D3E4F5">
		<tr valign="top">
			<td>

<TABLE BORDER="0" WIDTH="100%" CELLPADDING="0" CELLSPACING="0"><TR><TD bgcolor="#FFFFFF" HEIGHT="1"><TABLE BORDER="0" WIDTH="100%" CELLPADDING="0" CELLSPACING="0"><TR><TD></TD></TR></TABLE></TD></TR></TABLE>

<form name="songsForm" action="index.jsp" method="post">

<BR>
<b>
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=playlist&artist=NewAdds">New Additions</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=playlist&artist=All">Most Listened (all time)</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=playlist&artist=Monthly">Most Listened (monthly)</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Editor%27s%20Choice">Editor's Choice</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Music @ Work">Music @ Work</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Thathuva Padalgal">Thathuva Padalgal</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Kuthu Paattu">Kuthu Paattu</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Midnight Masala">Midnight Masala</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Kadhal Padalgal">Kadhal Padalgal</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Duet Songs">Duet Songs</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Solo Songs">Solo Songs</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Soga Padalgal">Soga Padalgal</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=userplaylist&artist=Devotional Songs">Devotinal Songs</a><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/songs/radio/index.jsp?action=svee">S Vee Sekhar Drama</a><br />
</b>
<br><br>

<div style="text-align:center">

<!-- Begin: AdBrite 
<script type="text/javascript">
   var AdBrite_Title_Color = '0000FF';
   var AdBrite_Text_Color = '000000';
   var AdBrite_Background_Color = 'D3E4F5';
   var AdBrite_Border_Color = 'D3E4F5';
</script>
<script src="http://ads.adbrite.com/mb/text_group.php?sid=331049&zs=3132305f363030" type="text/javascript"></script>
<div><a target="_top" href="http://www.adbrite.com/mb/commerce/purchase_form.php?opid=331049&afsid=1" style="font-weight:bold;font-family:Arial;font-size:13px;">Your Ad Here</a></div>


<a href="http://action.one.org/"><img
src="http://action.one.org/media/banners/ONE_banners_006_150_175.gif "
width="150" height="175" border="0"></a>
 End: AdBrite -->
<br><br>


</div>
			</td>
		</tr>
	</table>
	
<BR><BR>

</td>

<td width="3"><img src="/isai/songs/design/spacer.jpg" width="3" height="1" border="0" alt=""></td>
<td width="100%">
<!-- page text -->
<br />

<script src="ufo.js" type="text/javascript"></script>





<% if ("old".equalsIgnoreCase(userAction)) { 
    display = "Pre-Raja";
    playString = "playlist.xml&" + playString;
} else if ("illayaraja".equalsIgnoreCase(userAction)) { 
    display = "Raja Hits";
    playString = "file=illayarajahits.xml&" + playString;
} else if ("arr".equalsIgnoreCase(userAction)) { 
    display = "Rehman Hits";
    playString = "file=arrhits.xml&" + playString;
} else if ("alltime".equalsIgnoreCase(userAction)) { 
    display = "Most Listened Songs";
    playString = "file=alltime.xml&" + playString;
} else if ("yuvan".equalsIgnoreCase(userAction)) { 
    display = "Yuvan Hits";
    playString = "file=yuvan.xml&" + playString;
} else if ("deva".equalsIgnoreCase(userAction)) { 
    display = "Deva Hits";
    playString = "file=deva.xml&" + playString;
} else if ("harris".equalsIgnoreCase(userAction)) { 
    display = "Harris Hits";
    playString = "file=harris.xml&" + playString;
} else if ("vidya".equalsIgnoreCase(userAction)) { 
    display = "Vidyasagar Hits";
    playString = "file=vidya.xml&" + playString;
} else if ("joshua".equalsIgnoreCase(userAction)) { 
    display = "Joshua Sridhar Hits";
    playString = "file=joshua.xml&" + playString;
} else if ("gvp".equalsIgnoreCase(userAction)) { 
    display = "G V Prakash Hits";
    playString = "file=gvp.xml&" + playString;
} else if ("mani".equalsIgnoreCase(userAction)) { 
    display = "Mani Sharma Hits";
    playString = "file=mani.xml&" + playString;
} else if ("sri".equalsIgnoreCase(userAction)) { 
    display = "Srikanth Deva Hits";
    playString = "file=sri.xml&" + playString;
} else if ("sabesh".equalsIgnoreCase(userAction)) { 
    display = "Sabesh Murali Hits";
    playString = "file=sri.xml&" + playString;    
} else if ("vijay".equalsIgnoreCase(userAction)) { 
    display = "Vijay Antony Hits";
    playString = "file=vijay.xml&" + playString;    
} else if ("bharat".equalsIgnoreCase(userAction)) { 
    display = "Bharathwaj Hits";
    playString = "file=bharat.xml&" + playString;    
} else if ("svee".equalsIgnoreCase(userAction)) { 
    display = "S Vee Sekhar Drama";
    playString = "file=svee.xml&" + playString;    
} else if ("devisri".equalsIgnoreCase(userAction)) { 
    display = "Devi Sri Prasad Hits";
    playString = "file=devisri.xml&" + playString;    
} else if ("new".equalsIgnoreCase(userAction)) { 
    display = "New Additions";
    playString = "file=newsongs.xml&" + playString;  
} else if ("tr".equalsIgnoreCase(userAction)) { 
    display = "T Rajendar Hits";
    playString = "file=tr.xml&" + playString;  
} else if ("editor".equalsIgnoreCase(userAction)) { 
    display = "Editor\'s Choice";
    playString = "file=editor.xml&" + playString;  
} else if ("playlist".equalsIgnoreCase(userAction)) { 
	session.setAttribute("artists1", null);
    display = artist;
    playString = "/isai/music?action=playRssSong" + artist;
} 
else if ("playlist1".equalsIgnoreCase(userAction)) { 
    display = moviesearch;
    playString = "/isai/music?action=getSongs" + moviesearch;
}else if ("search".equalsIgnoreCase(userAction)) { 
    display = searchartist;
    playString = "/isai/music?action=search" + searchartist;
} else if ("userplaylist".equalsIgnoreCase(userAction)) { 
    display = artist;
    playString = "/isai/music?action=customRssPlayList" + artist;

} else { 
    display = "All Time Hits";
    playString = "file=alltime.xml&" + playString;
 } %>

</FORM><b>
<a href="/isai/music?action=moviesearch&id=0">0</a>
<a href="/isai/music?action=moviesearch&id=1">1</a>
<a href="/isai/music?action=moviesearch&id=2">2</a>
<a href="/isai/music?action=moviesearch&id=3">3</a>
<a href="/isai/music?action=moviesearch&id=4">4</a>
<a href="/isai/music?action=moviesearch&id=5">5</a>
<a href="/isai/music?action=moviesearch&id=6">6</a>
<a href="/isai/music?action=moviesearch&id=7">7</a>
<a href="/isai/music?action=moviesearch&id=8">8</a>
<a href="/isai/music?action=moviesearch&id=9">9</a>&nbsp&nbsp&nbsp
<a href="/isai/music?action=moviesearch&id=a">A</a>
<a href="/isai/music?action=moviesearch&id=b">B</a>
<a href="/isai/music?action=moviesearch&id=c">C</a>
<a href="/isai/music?action=moviesearch&id=d">D</a>
<a href="/isai/music?action=moviesearch&id=e">E</a>
<a href="/isai/music?action=moviesearch&id=f">F</a>
<a href="/isai/music?action=moviesearch&id=g">G</a>
<a href="/isai/music?action=moviesearch&id=h">H</a>
<a href="/isai/music?action=moviesearch&id=i">I</a>
<a href="/isai/music?action=moviesearch&id=j">J</a>
<a href="/isai/music?action=moviesearch&id=k">K</a>
<a href="/isai/music?action=moviesearch&id=l">L</a>
<a href="/isai/music?action=moviesearch&id=m">M</a>
<a href="/isai/music?action=moviesearch&id=n">N</a>
<a href="/isai/music?action=moviesearch&id=o">O</a>
<a href="/isai/music?action=moviesearch&id=p">P</a>
<a href="/isai/music?action=moviesearch&id=q">Q</a>
<a href="/isai/music?action=moviesearch&id=r">R</a>
<a href="/isai/music?action=moviesearch&id=s">S</a>
<a href="/isai/music?action=moviesearch&id=t">T</a>
<a href="/isai/music?action=moviesearch&id=u">U</a>
<a href="/isai/music?action=moviesearch&id=v">V</a>
<a href="/isai/music?action=moviesearch&id=w">W</a>
<a href="/isai/music?action=moviesearch&id=x">X</a>
<a href="/isai/music?action=moviesearch&id=y">Y</a>
<a href="/isai/music?action=moviesearch&id=z">Z</a>
</b>

<br><br>
<br><br>

<form name="searchForm" action="index.jsp" method="get">
    <input type="textbox" name="searchartist" />
    <input type="hidden" name="action" value="search" />
 
    <input type="submit" name="action" value="Search & Listen" />

</form>
<br><br>
<c:forEach var="item" items="${sessionScope.artists1}">
<a href="/isai/songs/radio/index.jsp?action=playlist1&moviesearch=<c:out value="${item}" />"><c:out value="${item}" /></a><br>
</c:forEach>
<% if (userAction != null) { %>

<div style="FONT-SIZE: 15px;COLOR: #ff0000">You are listening to "<%= display %>"</div>


<a name="fb_share" type="button_count" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>


<div style="height:400;">
<div style="float:left;">



<br><br><br>
<!-- 
<script type='text/javascript' src='/isai/songs/radio/jwplayer/jwplayer.js'></script>

<div id='mediaplayer'></div>

<script type="text/javascript">
  jwplayer('mediaplayer').setup({
    'flashplayer': '/jwplayer/jwplayer.flash.swf',
    'id': 'playerID',
    'width': '480',
    'height': '480',
    'file': '<%= playString %>',
     'plugins': 'flow',
    'flow.position': 'bottom',
    'flow.size': '200'
  });
</script>
 -->
 
<script src="/isai/songs/radio/jwplayer/jwplayer.js"></script>
<script>jwplayer.key="vgS1BfSqLpSK6cgafU71a1u27g0QipZEbQ1dfQ=="</script>


<div id="myElement"></div>
<script type="text/javascript">
jwplayer("myElement").setup({
    height: 500,
    playlist: "<%= playString %>",
    primary: "flash",
    width: 400,
    autostart: true,
	listbar: {
        	position: "bottom",
        	size: 250
      }
});
</script>


<

<br><br><br><br>

<!--
<p id="player2"><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player. or select the movie/artists list</p>

<script type="text/javascript">
var FU = { 	movie:"mp3player.swf",width:"350",height:"300",majorversion:"7",build:"0",bgcolor:"#FFFFFF",
flashvars:"<%= playString %>" };
UFO.create(FU, "player2");
</script>
-->

<form name="songsForm2" action="index.jsp" method="get">
<INPUT TYPE="CHECKBOX" NAME="shuffle" value="checked" <%=userShuffle%> >Shuffle<P>
<input type="hidden" name="action" value="<%=userAction%>" >
<% if (artist != null && !"null".equals(artist)) { %>
	<input type="hidden" name="artist" value="<%=artist%>" >
<%} else if (searchartist != null && !"null".equals(searchartist)){ %>
	<input type="hidden" name="searchartist" value="<%=searchartist%>" >
<% } %>
<INPUT TYPE="SUBMIT" VALUE="submit">
</FORM>

<br>

<script>
document.write('<fb:comments href="' + encodeURIComponent (document.location.href) + '" num_posts="5" width="400"></fb:comments>');
</script>

<br />
</div>

<% } else { %>

<br />



<iframe src="http://www.facebook.com/plugins/activity.php?site=imayam.org&amp;width=300&amp;height=300&amp;header=true&amp;colorscheme=light&amp;recommendations=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:300px;" allowTransparency="true"></iframe>
<br />

<div id="fbcomment" class="fb-comments" data-href="imayam.org" data-num-posts="5" data-width="400"></div>

<% } %>

</div>
</div>

<br><br>
<center>
<div style="font-size:15px;font-weight:bold;">Imayam's Most Admired Award</div>
<div style="font-size:10px;">(based on imayam top10)</div>
<div style="font-size:15px;">Composer of the Year 2011 : M S Viswanathan</div>
<div style="font-size:15px;">Composer of the Year 2010 : M S Viswanathan</div>
<div style="font-size:15px;">Composer of the Year 2009 : Harris Jeyaraj</div>
<div style="font-size:15px;">Composer of the Year 2008 : Harris Jeyaraj</div>
<div style="font-size:15px;">Composer of the Year 2007 : Harris Jeyaraj</div>
</center>
<br>

<div>
     <div id="accordionExample">

     		<div>
     		  <div  class="panelheader">
     		  	<b><center>Imayam Top 10 : 2011</center></b>
     		  </div>
     		  <div class="panelContent">
							<ol>
							    <li>Thyaagam : Nallavarkellam</li>
							    <li>Ratchagan : Soniya Soniya</li>							   
							    <li>Aval Oru Thodargathai : Deivam Thandha Veedu</li>							    
							    <li>Neengal Ketavai : Kanavu Kanum Vazhkai</li>							    
							    <li>Nenjil Ore Aalayam : Ninaippathellam</li>							    
							    <li>Paatha Kaanikkai :  Veeduvarai Uravu</li>							    
							    <li>Suryakanthi :  Paramasivan Kazhuthil</li>							    
							    <li>Unnal Mudiyum Thambi : Akkam Pakkam</li>							   
							    <li>Paalum Pazhamum : Ponaal Pogattum</li>							    						    
							    <li>Vettaikaran : Unnayarinthal</li>
							</ol>
     		  </div>
     		</div>


   
     		<div>
     		  <div  class="panelheader">
     		  	<b><center>Imayam Top 10 : 2010</center></b>
     		  </div>
     		  <div class="panelContent">
							<ol>
							    <li>Thyaagam : Nallavarkellam</li>
							    <li>Vaaranam Aayiram : Nenjukkul Peidhidum</li>							   
							    <li>Alaipayuthey : Snehidhane</li>							    
							    <li>Suryakanthi : Paramasivan Kazhuthil</li>							    
							    <li>Nenjil Ore Aalayam : Ninaippathellam</li>							    
							    <li>Vinnaithaandi Varuvaaya : Mannipaaya</li>							    
							    <li>Aval Oru Thodargathai :  Deivam Thandha Veedu</li>							    
							    <li>Paatha Kaanikkai : Veeduvarai Uravu</li>							   
							    <li>Endhiran : Puthiya Manidha</li>							    						    
							    <li>Vettaikaran : Unnayarinthal</li>
							</ol>
     		  </div>
     		</div>

   
   

     		<div>
     		  <div  class="panelheader">
     		  	<b><center>Imayam Top 10 : 2009</center></b>
     		  </div>
     		  <div class="panelContent">
							<ol>
							    <li>Vaaranam Aayiram : Nenjukkul Peidhidum</li>
							    <li>Vaaranam Aayiram : Ava Enna</li>
							    <li>Vaaranam Aayiram : Mundhinam</li>
							    <li>Sakkarakatti : Taxi Taxi</li>
							    <li>Vaaranam Aayiram : Adiyae Kolluthey</li>
							    <li>Vaaranam Aayiram : Annul Maelae</li>
							    <li>AlaiPayuthey :  Snehidhane</li>
							    <li>Sillunnu Oru Kadhal : Munbe Munbe Vaa</li>
							    <li>Vaaranam Aayiram : Oh! Shanthi Shanthi</li>
							    <li>Sakkarakatti : Marudhaani</li>
							</ol>
     		  </div>
     		</div>



     		<div>
     		  <div  class="panelheader">
     		  	<b><center>Imayam Top 10 : 2008</center></b>
     		  </div>
     		  <div class="panelContent">
							<ol>
							    <li>Bheema : Mudhal Mazhai</li>
							    <li>Sakkarakatti : Taxi Taxi</li>
							    <li>Vaaranam Aayiram: Ava Enna</li>
							    <li>Sillunnu Oru Kadhal : New York Nagaram</li>
							    <li>Bheema : Oru Mugamo</li>
							    <li>Azhagiya Tamizh Magan: Ponmagal Vandaal</li>
							    <li>Unnaale Unnaale : June Pona</li>
							    <li>Azhagiya Tamizh Magan : Valayapatti Tamizhe</li>
							    <li>Ghajini : Oru Maalai</li>
							    <li>Vaaranam Aayiram: Nenjukkul Peidhidum</li>

							</ol>
     		  </div>
     		</div>


     		<div>
     		  <div  class="panelheader">
     		  	<b><center>Imayam Top 10 : 2007</center></b>
     		  </div>
     		  <div class="panelContent">
							<ol>
							    <li>Unnaale Unnaale : June Pona</li>
							    <li>Pachai Kili Muthucharam : Unn Siripnil</li>
							    <li>Vettaiyaadu Vilaiyaadu : Vennilave</li>
							    <li>Sillunnu Oru Kadhal : New York Nagaram</li>
							    <li>Pokkiri : Pogadhe</li>
							    <li>Deepavali : Kadhal Vaithu</li>
							    <li>Thamirabharani : Vaartha Onnu</li>
							    <li>Chennai 600028: Saroja Saman Nikalo</li>
							    <li>Sivaji : Athiradee Kaalam</li>
							    <li>Veyyil : Uriguthae</li>
							</ol>
     		  </div>
     		</div>


</div>



<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-1613112-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</td>
<!-- page text -->




<td width="156"><table width="156" height="24" cellpadding="0" cellspacing="0" border="0" background="/isai/songs/design/menutop.jpg"><tr valign="middle"><td align="center"><div style="padding-top:6px;padding-left:18px "><span class="style1">More Options</span></div></td></tr></table><table width="156" cellpadding="0" cellspacing="0" border="0" bgcolor="#D3E4F5">
		<tr valign="top">
			<td>

<br>
<b>

<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/music?action=movie">Select by Movie</a></img><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/music?action=artist">Select by Artist</a></img><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/music?action=composer">Select by Composer</a></img><br />
<img src="/isai/songs/design/redarrow.jpg" width="13" height="9" border="0" alt=""><a href="/isai/music?action=lyrics">Select by Lyricist</a></img><br />

</b>
<br />
<c:forEach var="item" items="${sessionScope.artists}">
<a href="/isai/songs/radio/index.jsp?action=playlist&artist=<c:out value="${item}" />"><c:out value="${item}" /></a><br>
</c:forEach>

                        </td>
                </tr>
        </table>
</td>






</center>
<img id="keepAliveIMG" width="1" height="1" src="/isai/songs/design/smartlink.jpg?" />

</body>
</html>