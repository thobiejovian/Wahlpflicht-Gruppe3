<app>
  <navbar/>
  <users/>
  <page2/>
  <show-app/>

  <script>
    // Start routing when application starts
    this.on('mount', function() {
      riot.route.start(true)
    })
  </script>
</app>
