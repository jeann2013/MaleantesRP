// $("#StatusHud #zona").hide();
$("#StatusHud #zona2").hide();

print = function(msg)
{
    console.log(msg)
}

window.addEventListener('message', function (event) {
    let data = event.data

    if (data.hud){

        $("body").show();

        if (data.health != -100){
            $('#healtlevel').html(Math.round(data.health))
            if (data.health < 50 ){
                $('#healtlevel').addClass('red')
            }else{
                $('#healtlevel').removeClass('red')
            }
        }else if(data.health == -100){
            $('#healtlevel').html("0")
            $('#healtlevel').addClass('red')
        }

        if(data.veh){
            $("#StatusHud").animate({"left": '28vh', "bottom":'3vh'},200 );
        }else if(!data.veh){
            $("#StatusHud").animate({"left": '0.7vh', "bottom":'0.7vh'},350 );
        }

        $('#shieldval').html(Math.round(data.armour))
        $('#hungerlevel').html(Math.round(data.food))
        $('#waterlevel').html(Math.round(data.thirst))
        $('#stresslevel').html(Math.round(data.stress))


        if (data.zone == 'nostress')
        {
            $("#StatusHud #zona").show();
        }
        else if (data.zone == 'none')
        {
            $("#StatusHud #zona").hide();
        }
        
    }

});