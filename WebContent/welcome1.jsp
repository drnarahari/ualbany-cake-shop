<!DOCTYPE html>
<html lang="en">
  <head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>UAlbany Cake Shop | Login</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" /><!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /--><!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /--><!--script src="js/less-1.3.3.min.js"></script--><!--append ‘#!watch’ to the browser URL, then refresh the page. -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" /><!-- HTML5 shim, for IE6-8 support of HTML5 elements --><!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]--><!-- Fav and touch icons -->
	<link href="img/apple-touch-icon-144-precomposed.png" rel="apple-touch-icon-precomposed" sizes="144x144" />
	<link href="img/apple-touch-icon-114-precomposed.png" rel="apple-touch-icon-precomposed" sizes="114x114" />
	<link href="img/apple-touch-icon-72-precomposed.png" rel="apple-touch-icon-precomposed" sizes="72x72" />
	<link href="img/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon-precomposed" />
	<link href="img/favicon.png" rel="shortcut icon" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><script src="http://cdnjs.cloudflare.com/ajax/libs/script.js/2.5.7/script.min.js"></script>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css" rel="stylesheet" />
	<style type="text/css">
	</style>
</head>
  <body>


       
             

        

        
        <% 
if(session.getAttribute("currentSessionType").toString().equals("buyer") )
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>
         
    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Ualbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">Search Cakes By Name</a></li>
              <li><a href="#">Search Cakes By Seller</a></li>
              <li><a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
          <span class="glyphicon-class">View Cart</span></a>
        
        </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My Account<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">View Purchase History</a></li>
                  <li class="divider"></li>
                  
               <li><a href="#">Submit Reviews!</a></li>
                 
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><%= user%> <span class="sr-only">(current)</span></a></li>
              
              <li><a href="Logout.jsp">Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Welcome <b><%= type%></b></h1>
        <p>UAlbany Cake Shop is a great place to buy cakes. We make sure you have the best cake shopping experience ever!</p>
        <p>          <a class="btn btn-lg btn-primary" href="#" role="button">Start Buying! &raquo;</a>
        </p>
      </div>

    </div> <!-- /container -->

           
	<%}
else
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>
		
		    
    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">Search Cakes</a></li>
              <li><a href="#">View Your Orders</a></li>
               <li><a href="#">Add New Cakes</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My Account <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Read Your Reviews</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">View History</li>

                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><%= user1%> <span class="sr-only">(current)</span></a></li>
         
              <li><a href="Logout.jsp">Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Welcome <b><%= type2%></b></h1>
        <p>UAlbany Cake Shop makes it very easy for you to sell your cakes!</p>
        <p>
          <a class="btn btn-lg btn-primary" href="#" role="button">Add Cakes! &raquo;</a>
        </p>
      </div>

    </div> <!-- /container -->      
          <%} %>




    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
