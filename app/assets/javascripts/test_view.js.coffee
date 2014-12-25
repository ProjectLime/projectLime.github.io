$ ->
  map = L.map("map").setView([23.1048,120.1788],16)

  googleLayer = new L.Google("ROADMAP")
  map.addLayer googleLayer

  marker = L.marker([23.1048,120.1788]).addTo(map)