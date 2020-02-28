function showUser(elem) {
  axios.get('/api/v1/users/' + elem.id)
  .then(function (response) {
    let vorname = response.data.vorname
    let nachname = response.data.nachname
    let userid = response.data.userid
    let html = "";
    html += "<p>Vorname: " + vorname + "</p>"
    html += "<p>Nachname: " + nachname + "</p>"
    html += "<p>ID: " + userid + "</p>"
    document.getElementById("userinfo").innerHTML = html
  })
  .catch(function (error) {
    alert(error)
  })
}

axios.get('/api/v1/users')
  .then(function (response) {
    let userids = response.data
    let html = "";
    for (const id of userids) {
      html += '<li><a href="javascript:void(0)" id="'
      html += id + '" onclick="showUser(this)">'
      html += id + "</a></li>\n"
    }
    document.getElementById("userlist").innerHTML = html
  })
  .catch(function (error) {
    alert(error)
  })
