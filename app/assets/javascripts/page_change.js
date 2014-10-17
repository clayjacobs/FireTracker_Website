function togInfection(){

    togHeatmap();
    togCalfire();
    togUserData();
    
	var headerBrand = document.getElementsByClassName('brand');
	for(var i=0, len=headerBrand.length; i<len; i++)
    {
        headerBrand[i].style["background"] = "#0000ff url('/assets/outbreak-logo.png') no-repeat 25px 26px";
        headerBrand[i].style["width"] = "320px";
    }

    var socialNetworkIcons = document.getElementsByClassName('socialIcon');
    for(var i=0, len=socialNetworkIcons.length; i<len; i++)
    {
        socialNetworkIcons[i].style["color"] = "#0000ff";
    }

    document.getElementById("trackerType").innerHTML = "Outbreak";

    var alerts = document.getElementsByClassName('badge-danager');
    for(var i=0, len=alerts.length; i<len; i++)
    {
        alerts[i].style["background-color"] = "#0000ff";
    }

    document.getElementById("userName").style.color = "#0000ff";

    var trackerTitles = document.getElementsByName('trackerTitle');
    for(var i=0, len=trackerTitles.length; i<len; i++)
    {
        trackerTitles[i].style["color"] = "#5e84ff";
    }

    document.getElementById("hmTog").style.color = "#5e84ff";
}

function togFire(){

    togHeatmap();
    togCalfire();
    togUserData();

	var headerBrand = document.getElementsByClassName('brand');
	for(var i=0, len=headerBrand.length; i<len; i++)
    {
        headerBrand[i].style["background"] = "#ff0000 url('/assets/fire-logo.png') no-repeat 25px 26px";
        headerBrand[i].style["width"] = "240px";
    }

    var socialNetworkIcons = document.getElementsByClassName('socialIcon');
    for(var i=0, len=socialNetworkIcons.length; i<len; i++)
    {
        socialNetworkIcons[i].style["color"] = "#ff0000";
    }

    document.getElementById("trackerType").innerHTML = "Fire";

    var alerts = document.getElementsByClassName('badge-danager');
    for(var i=0, len=alerts.length; i<len; i++)
    {
        alerts[i].style["background-color"] = "#ff0000";
    }

    document.getElementById("userName").style.color = "#ff0000";

    var trackerTitles = document.getElementsByName('trackerTitle');
    for(var i=0, len=trackerTitles.length; i<len; i++)
    {
        trackerTitles[i].style["color"] = "#ff0000";
    }

    document.getElementById("hmTog").style.color = "#ff0000";
}