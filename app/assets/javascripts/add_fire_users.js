var text = //JSON content
var obj = JSON.parse(text);

epsg4326 =  new OpenLayers.Projection("EPSG:4326"); //WGS 1984 projection
projectTo = map.getProjectionObject(); //The map projection (Spherical Mercator)

var vectorLayer = new OpenLayers.Layer.Vector("Overlay");

for (var i = 0; i < obj.length; i++) {

	if (obj[i].category != 'Calfire') { 

		var feature = new OpenLayers.Feature.Vector(
			new OpenLayers.Geometry.Point(obj[i].lat,obj[i]).transform(espg4326, projectTo),
			{description: 'Category: '+ obj[i].category + '\nSeverity: '+ obj[i].severity + '\n' + obj[i].image},
			{externalGraphic: 'img/'+ obj[i].severity +'.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25}
			);

		vectorLayer.addFeatures(feature);
	};
};
map.addLayer(vectorLayer);