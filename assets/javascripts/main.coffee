---
---

getUrlParameter = (sParam) ->
  sPageURL = window.location.search.substring(1)
  sURLVariables = sPageURL.split("&")
  for URLVar in sURLVariables
    sParameterName = URLVar.split("=")
    return sParameterName[1] if sParameterName[0] == sParam

$(document).ready ->
  if getUrlParameter("contact") == "1"
    $("#contact-flash").show()
  if getUrlParameter("referral") == "1"
    $("#referral-flash").show()