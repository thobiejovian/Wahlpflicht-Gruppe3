<navbar if={show}>
  <p>
    <a href="#/users">Users</a> |
    <a href="#/page2">Page 2</a> |
  </p>

  <script>
    let self = this

    // routing
    let localRoute = riot.route.create()
    localRoute(function () {
      self.show = true
      self.update()
    })
    localRoute('/', function () {
      self.show = true
      self.update()
    })
  </script>
</navbar>
