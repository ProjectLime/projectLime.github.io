$ ->
  map = L.map("map").setView([25.0389,121.559],16)

  googleLayer = new L.Google("ROADMAP")
  map.addLayer googleLayer

  marker = L.marker([25.0389,121.559]).addTo(map)
  marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup()