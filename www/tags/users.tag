<users id="users" if={show}>
  <h3>Available Users</h3>

  <ul style="list-style-type:none" id="userlist"></ul>

  <div>
    <h3>User Info</h3>
    <div id="userinfo">
    </div>
  </div>

  <script id="usersmain">
    var self = this

    // routing
    var localRoute = riot.route.create()
    localRoute(function () {
      self.show = false
      self.update()

      let script = document.getElementById("usersjs");
      if (script != null) {
        alert("remove")
        script.parentNode.removeChild(script)
      }
    })

    localRoute('/users', function () {
      self.show = true
      self.update()

      let script = document.createElement("script")
      script.setAttribute('id', "usersjs");
      script.src = "/tags/users.js"
      self.root.appendChild(script)

    })
  </script>
</users>
