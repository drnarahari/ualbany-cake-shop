<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>


    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>

    <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" style="color:Orange;" href="#">UAlbany Cake Shop</a>
        </div><!--
        <div id="navbar" class="navbar-collapse collapse">
        </div>
        --><div id="navbar" class="navbar-collapse collapse">
       
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    <br/> <br/><br/>

    <div class="container">
        <div class="row">
        <div class="page-header">
            <h1>Register</h1>
			<h5>Enter your information below</h5>
        </div>

        <div class="col-lg-8 col-lg-offset-2">
            <form id="defaultForm" class="form-horizontal" action="RegisterUser"  method ="GET">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Phone</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="phone"  />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Username</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="username" />
                    </div>
                </div>
				
				
                <div class="form-group">
                    <label class="col-lg-3 control-label">Password</label>
                    <div class="col-lg-5">
                        <input type="password" class="form-control" name="password" />
                    </div>
                </div>
				
				 <div class="form-group">
                    <label class="col-lg-3 control-label">Address</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="address" />
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-lg-3 control-label">User Type</label>
                     <div class="col-lg-5">
<select name="userType" >
                <option value="buyer" selected>Buyer</option>
                <option value="seller">Seller</option>
              </select>
                   </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            fullname: {
                message: 'Please enter a valid name',
                validators: {
                    notEmpty: {
                        message: 'Name cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        message: 'Name must at least be 4 characters'
                    },
						 regexp: {
                        regexp:/[a-zA-Z]/,
                        message: 'Name can only be letters'
                    }
                    }
                },
            
            timestamp: {
                message: 'Invalid timestamp',
                validators: {
                    notEmpty: {
                        message: 'Timestamp field cannot be empty'
                    },
					  date: {
                        format: 'YYYY/MM/DD',
                        message: 'The timestamp is not valid'
                    }
				
				
         
               
                }
            },
              random_number: {
                message: 'Invalid random number',
                validators: {
                    notEmpty: {
                        message: 'The random number field is required and can\'t be empty'
                    },
					stringLength: {
                        min: 4,
                        max: 4,
                        message: 'random number must be a 4 digit integer'
                    }
                
                  
                }
            },
			
			message: {
                message: 'The message is not valid',
                validators: {
                    notEmpty: {
                        message: 'The message field is required and can\'t be empty'
                    },
					stringLength: {
                        min: 4,
                        
                        message: 'Only message of string length greater than 4 accepted'
                    }
				
              
                  
                }
            },
			
			message_id: {
                message: 'The message id is not valid',
                validators: {
                    notEmpty: {
                        message: 'The message_id is required and can\'t be empty'
                    },
					stringLength: {
                        min: 6,
						max: 6,
                        message: 'Message id must be a 6 digit integer'
                    },
					 regexp: {
                        regexp:/^[0-9]+$/,
                        message: 'Only numbers accepted as message id at this point'
                    }
                   
                }
            }
        }
    });
});
</script>
</body>
</html>