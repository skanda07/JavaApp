<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Assessment</title>
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script type="text/javascript">
    	function validate()
			{
				var a=document.getElementById('pwd').value;
				var b=document.getElementById('cpwd').value;
				if(!(a==b))
					{
						alert("Both passwords are not matching");
						
					}
				else{
					alert('Passwords are matching');
				}
			}

    </script>

    <script type="text/javascript">

			function dobValidate() {

			var date= new Date();

			var year=date.getFullYear();
			year=year-18;
			var month=date.getMonth()+1;
			var dd=date.getDate();

			if(month<10)
			{
			month='0'+month;
			}
			if(dd<10)
			{
			dd=0+""+dd;
			}
			var y = year-18;
			document.getElementById('dob').max=year+"-"+month+"-"+dd;

			}

</script>

<script type="text/javascript">
	
			type =['Graduation','Postgraduation'];

			data=[['ECE','CSE','EEE'],['MS','MTECH','ME'],];


			function fillDD()
					{
					var Typedd =document.getElementById('type');
					for(i=0;i<type.length;i++)
					{
					var ele= document.createElement('option');
					ele.text=type[i];
					Typedd.add(ele,i+1);

					}
					}


						function fillData()
						{

						var Typedd =document.getElementById('type');
						var selectedIdx= Typedd.selectedIndex;

						var Datadd =document.getElementById('data');

						Datadd.innerText=null;
						var ele=document.createElement('option');
						ele.text="SELECT";
						Datadd.add(ele,0);

						for(i=0;i<data[selectedIdx-1].length;i++)
						{
						var ele=document.createElement('option');
						ele.text=data[selectedIdx-1][i];
						Datadd.add(ele,i+1);

						}

						}



</script>
    
</head>
<body onload="fillDD()"">
<div class="container">
      <div class="row">
      	<center><h3> REGISTRATION FORM</h3></center>
      	<br>

      </div>
       <div class="row">
       	<div class="col-lg-3 col-md-3 col-sm-5">
			<div></div>
		</div>

     <div class="col-lg-6 col-md-6 col-sm-2">

       	<form>
       				<div class="form-group">
					    <label>Enter Your Name</label>
					    <input type="text" class="form-control" id="name"  required>
					  </div>
					  


					  <div class="form-group">
					    <label>Enter Your Email</label>
					    <input type="email" class="form-control" id="email" required>
					  </div>

					  <div class="form-group">
					    <label>Enter Your Password</label>
					    <input type="password" class="form-control" id="pwd" required>
					  </div>

					  <div class="form-group">
					    <label>Confirm Your Password</label>
					    <input type="password" class="form-control" id="cpwd" required>
					  </div>

					  	<div class="form-group">
					    <label>Enter Date of Birth</label>
					    <input type="date" class="form-control" id="dob" onclick="dobValidate()" required>
					  </div>
					  
  						<div class="form-group">
  							
  							
  							<label>Enter Your Education Details</label>
							<select id="type" class="form-control" onchange="fillData()">
							<option>Education Level</option>
							</select>
							<br>
							<select id="data" class="form-control">
							<option>Select Degree</option>
							</select>
							
						</div>



					  <div class="form-group">
					  <input type="submit" class="btn btn-default" onclick="validate()" value="Submit">
					</div>
		</form>
	</div>
	

	<div class="col-lg-3 col-md-3 col-sm-5">
			<div></div>
		</div>
</div>
</div>
</body>
</html>
