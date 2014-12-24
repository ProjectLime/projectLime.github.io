$ ->
  map = L.map("map").setView([25.0389,121.559],16)

  googleLayer = new L.Google("ROADMAP")
  map.addLayer googleLayer

