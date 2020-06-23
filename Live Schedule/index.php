<?php
require_once('bdd.php');


$sql = "SELECT id, title, address, notes, practitioner, time, finish, start, end, color FROM events ";

$req = $bdd->prepare($sql);
$req->execute();

$events = $req->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Live schedule 0.1</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	
	<!-- FullCalendar CSS -->
	<link href='css/fullcalendar.css' rel='stylesheet' />


    <!-- CSS -->
    <style>
    body {
        padding-top: 100px;
        /* Navbar on top */
    }
	#calendar {
		max-width: 950px;
	}
	.col-centered{
		float: none;
		margin: 0 auto;
	}
    </style>

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
					<span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Live Schedule 0.1</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#"></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12 text-center">
                <h1>Smoke-Free</h1>
                <p class="lead">Live Schedule!</p>
                <div id="calendar" class="col-centered">
                </div>
            </div>
			
        </div>
		
		<div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			<form class="form-horizontal" method="POST" action="addEvent.php">
			
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add Event</h4>
			  </div>
			  <div class="modal-body">
				
				  <div class="form-group">
					<label for="title" class="col-sm-2 control-label">Title</label>
					<div class="col-sm-10">
					  <input type="text" name="title" class="form-control" id="title" placeholder="Title">
					</div>
				  </div>
				  <div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address</label>
					<div class="col-sm-10">
					  <input type="text" name="address" class="form-control" id="address" placeholder="Address">
					</div>
				  </div>
				  <div class="form-group">
					<label for="practitioner" class="col-sm-2 control-label">Practitioner</label>
					<div class="col-sm-10">
					  <input type="text" name="practitioner" class="form-control" id="practitioner" placeholder="Practitioner Name">
					</div>
				  </div>
				  <div class="form-group">
					<label for="color" class="col-sm-2 control-label">Color</label>
					<div class="col-sm-10">
					  <select name="color" class="form-control" id="color">
						  <option value="">Choose</option>
						  <option style="color:#0071c5;" value="#0071c5">&#9724; Dark blue</option>
						  <option style="color:#40E0D0;" value="#40E0D0">&#9724; Turquoise</option>
						  <option style="color:#008000;" value="#008000">&#9724; Green</option>						  
						  <option style="color:#FFD700;" value="#FFD700">&#9724; Yellow</option>
						  <option style="color:#FF8C00;" value="#FF8C00">&#9724; Orange</option>
						  <option style="color:#FF0000;" value="#FF0000">&#9724; Red</option>
						  <option style="color:#000;" value="#000">&#9724; Black</option>
						  
						</select>
					</div>
				  </div>
				  <div class="form-group">
					<label for="start" class="col-sm-2 control-label">Start Date</label>
					<div class="col-sm-10">
					  <input type="text" name="start" class="form-control" id="start" placeholder="start">
					</div>
				  </div>
				  <div class="form-group">
					<label for="end" class="col-sm-2 control-label">End Date</label>
					<div class="col-sm-10">
					  <input type="text" name="end" class="form-control" id="start" placeholder="start">
					</div>
				  </div>
				  <div class="form-group">
					<label for="time" class="col-sm-2 control-label">Start Time</label>
					<div class="col-sm-10">
					  <input type="text" name="time" class="form-control" id="time" placeholder="00:00">
					</div>
				  </div>
				  <div class="form-group">
					<label for="finish" class="col-sm-2 control-label">End Time</label>
					<div class="col-sm-10">
					  <input type="text" name="finish" class="form-control" id="finish" placeholder="00:00">
					</div>
				  </div>
				  <div class="form-group">
					<label for="notes" class="col-sm-2 control-label">Notes</label>
					<div class="col-sm-10">
					<input type="text" name="notes" class="form-control" id="notes" placeholder="Notes">
					</div>
				  </div>
				  Weekly: <input type="checkbox" name="recursion" value="resursion"><br>
				  Fortnightly: <input type="checkbox" name="recursion" value="resursion"><br>
				  Monthly: <input type="checkbox" name="recursion" value="resursion"><br>
				
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save changes</button>
			  </div>
			</form>
			</div>
		  </div>
		</div>
		
		
		
		<!-- Modal -->
		<div class="modal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			<form class="form-horizontal" method="POST" action="editEventTitle.php">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Edit Event</h4>
			  </div>
			  <div class="modal-body">
				
				  <div class="form-group">
					<label for="title" class="col-sm-2 control-label">Title</label>
					<div class="col-sm-10">
					  <input type="text" name="title" class="form-control" id="title" placeholder="Title">
					</div>
				  </div>
				  <div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address</label>
					<div class="col-sm-10">
					  <input type="text" name="address" class="form-control" id="address" placeholder="Address">
					</div>
				  </div>
				  <div class="form-group">
					<label for="practitioner" class="col-sm-2 control-label">Practitioner</label>
					<div class="col-sm-10">
					  <input type="text" name="practitioner" class="form-control" id="practitioner" placeholder="Practitioner Name">
					</div>
				  </div>
				  <div class="form-group">
					<label for="notes" class="col-sm-2 control-label">Notes</label>
					<div class="col-sm-10">
					  <input type="text" name="notes" class="form-control" id="notes" placeholder="Notes">
					</div>
				  </div>
				  <div class="form-group">
					<label for="color" class="col-sm-2 control-label">Color</label>
					<div class="col-sm-10">
					  <select name="color" class="form-control" id="color">
						  <option value="">Choose</option>
						  <option style="color:#0071c5;" value="#0071c5">&#9724; Dark blue</option>
						  <option style="color:#40E0D0;" value="#40E0D0">&#9724; Turquoise</option>
						  <option style="color:#008000;" value="#008000">&#9724; Green</option>						  
						  <option style="color:#FFD700;" value="#FFD700">&#9724; Yellow</option>
						  <option style="color:#FF8C00;" value="#FF8C00">&#9724; Orange</option>
						  <option style="color:#FF0000;" value="#FF0000">&#9724; Red</option>
						  <option style="color:#000;" value="#000">&#9724; Black</option>
						  
						</select>
					</div>
				  </div>
				 
				  <div class="form-group">
					<label for="time" class="col-sm-2 control-label"> Start Time</label>
					<div class="col-sm-10">
					  <input type="text" name="time" class="form-control" id="time" placeholder="00:00">
					</div>
				  </div>
				  <div class="form-group">
					<label for="finish" class="col-sm-2 control-label">End Time</label>
					<div class="col-sm-10">
					  <input type="text" name="finish" class="form-control" id="finish" placeholder="00:00">
					</div>
				  </div>
				    <div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
						  <div class="checkbox">
							<label class="text-danger"><input type="checkbox"  name="delete"> Delete event</label>
						  </div>
						</div>
					</div>
				  
				  <input type="hidden" name="id" class="form-control" id="id">
				
				
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save changes</button>
			  </div>
			</form>
			</div>
		  </div>
		</div>

    </div>

    <!-- jQuery Version -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap-->
    <script src="js/bootstrap.min.js"></script>
	
	<!-- FullCalendar -->
	<script src='js/moment.min.js'></script>
	<script src='js/fullcalendar.min.js'></script>
	
	<script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'basicWeek,month,basicDay'
			},
			defaultDate: '2020-06-23',
			editable: true,
			eventLimit: true, 
			selectable: true,
			selectHelper: true,
			select: function(start, end) {
				
				$('#ModalAdd #start').val(moment(start).format('YYYY-MM-DD'));
				$('#ModalAdd #end').val(moment(end).format('YYYY-MM-DD'));
				$('#ModalAdd').modal('show');
			},
			eventRender: function(event, element) {
				element.bind('dblclick', function() {
					$('#ModalEdit #id').val(event.id);
					$('#ModalEdit #title').val(event.title);
					$('#ModalEdit #address').val(event.address); 
					$('#ModalEdit #practitioner').val(event.practitioner);
					$('#ModalEdit #time').val(event.time); 
					$('#ModalEdit #finish').val(event.finish); 
					$('#ModalEdit #notes').val(event.notes);
					$('#ModalEdit #color').val(event.color);
					$('#ModalEdit').modal('show');
				});
			},
			eventDrop: function(event, delta, revertFunc) { 

				edit(event);

			},
			eventResize: function(event,dayDelta,minuteDelta,revertFunc) { 

				edit(event);

			},
			events: [
			<?php foreach($events as $event): 
			
				$start = explode(" ", $event['start']);
				$end = explode(" ", $event['end']);
				if($start[1] == '00:00:00'){
					$start = $start[0];
				}else{
					$start = $event['start'];
				}
				if($end[1] == '00:00:00'){
					$end = $end[0];
				}else{
					$end = $event['end']; 
				}
			?>
				{
					id: '<?php echo $event['id']; ?>',
					title: '<?php echo $event['title']; ?>',
					practitioner: '<?php echo $event['practitioner']; ?>',
					notes: '<?php echo $event['notes']; ?>',
					address: '<?php echo $event['address']; ?>',
					time: '<?php echo $event['time']; ?>',
					finish: '<?php echo $event['finish']; ?>',
					start: '<?php echo $start; ?>',
					end: '<?php echo $end; ?>',
					color: '<?php echo $event['color']; ?>',
				},
			<?php endforeach; ?>
			]
		});
		
		function edit(event){
			start = event.start.format('YYYY-MM-DD');
			if(event.end){
				end = event.end.format('YYYY-MM-DD');
			}else{
				end = start;
			}
			
			id =  event.id;
			
			Event = [];
			Event[0] = id;
			Event[1] = start;
			Event[2] = end;
			
			$.ajax({
			 url: 'editEventDate.php',
			 type: "POST",
			 data: {Event:Event},
			 success: function(rep) {
					if(rep == 'OK'){
						alert('Saved');
					}else{
						alert('Could not be saved. try again.'); 
					}
				}
			});
		}
		
	});

</script>

</body>

</html>