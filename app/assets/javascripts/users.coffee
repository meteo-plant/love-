$ ->
  $("#address_zipcode").jpostal({
    postcode : [ "#address_zipcode" ],
    address  : {
                  "#user_address" : "%3%4%5%6%7"
                }
  })