let status = [];
let radarIsShowing = true;
let isPaused = false;
let minimapData;
let blinking = [];
var spedselector = document.querySelector("#Velocimetro")
// selectorspeed
var spedselector2 = document.querySelector("#selectorspeed")
window.onData = function (data) {
	if(data.updateVehicle)
	{
		this.updateVehicle(data);
	}
};

this.updateVehicle = function(data) {
	
	var vehicleInfo = document.querySelector('.info.vehicle');
	var vehicleSeatbelt = document.querySelector('#seatbelt');

	var vehicleFuel = document.querySelector('#fuel');
	var vehicleCruiser = document.querySelector('#vehicle-speed strong');
	var vehicleFuel2 = document.querySelector('#fuel2');
	var vehicleFuel3 = document.querySelector('#fuel3');
	
	if (data.status == true) {	

		if (vehicleInfo.classList.contains('inactive')) {
			vehicleInfo.classList.remove('inactive');
			vehicleInfo.classList.add('active');
		}

	
		if (vehicleInfo.classList.contains('updated') == false) {

			var vehicleSpeedUnit = data.config.speedUnit.slice(0,2)+'/'+data.config.speedUnit.slice(-1);
			var vehicleAverageSpeed = Math.ceil(data.config.maxSpeed / 6);

			vehicleInfo.classList.add('updated');
			saferInnerHTML(vehicleCruiser,vehicleSpeedUnit);

		}
		var previousGear = document.querySelector('#vehicle-gear span').innerHTML;
		var currentGear = data.gear;
		if (previousGear != currentGear) { document.querySelector('#vehicle-gear').classList.add('pulse') }
		saferInnerHTML(document.querySelector('#vehicle-gear span'), data.gear);


		document.querySelector('#progress-speed svg circle.speed').style.strokeDashoffset = data.nail;
		saferInnerHTML(document.querySelector('#vehicle-speed span'), data.speed);

		document.querySelector('#progress-rpm svg circle.rpm').style.strokeDashoffset = data.rpmnail;
		saferInnerHTML(document.querySelector('#vehicle-rpm span'), data.rpm);

		if ( (data.seatbelt.status == true) && (vehicleSeatbelt.classList.contains('on') == false) ) {
			vehicleSeatbelt.classList.remove('off');
			vehicleSeatbelt.classList.add('on');
		}
		else if ( (data.seatbelt.status == false) && (vehicleSeatbelt.classList.contains('off') == false) ) {
			vehicleSeatbelt.classList.remove('on');
			vehicleSeatbelt.classList.add('off');
		}
		
		if(data.haveBelt)
		{
			$('#seatbelt').show();
		}
		else
		{
			$('#seatbelt').hide();
		}

		if (vehicleCruiser.classList.contains(data.cruiser) == false) {
			vehicleCruiser.classList.remove('on','off');
			vehicleCruiser.classList.add(data.cruiser);
		}
	
		vehicleFuel.querySelector('span').style.height = data.fuel+'%';

		if (data.fuel <= 35) {
			if (vehicleFuel.classList.contains('dying') == false) { vehicleFuel.classList.add('dying');	}
		}
		else { vehicleFuel.classList.remove('dying'); }


		vehicleFuel2.querySelector('span').style.height = data.fuel2/33;
		vehicleFuel3.querySelector('span').style.height = data.fuel3.toFixed(3);

		if (data.fuel2 < 500) {
			if (vehicleFuel2.classList.contains('dying') == false) { vehicleFuel2.classList.add('dying');	}
		}
		else { vehicleFuel2.classList.remove('dying'); }

	}
	
	else {
		if (vehicleInfo.classList.contains('active')) {
			vehicleSeatbelt.classList.remove('on');
			vehicleCruiser.classList.remove('on');

			vehicleInfo.classList.remove('active');
			vehicleInfo.classList.add('inactive');
		}

	}
}

window.onload = function (e) {
	window.addEventListener('message', function (event) {
		onData(event.data);
	});
};