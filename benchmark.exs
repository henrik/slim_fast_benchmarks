IO.puts "hi"

source = File.read!("view.slim")
context = [
  header: "Colors",
  item: [
    [name: "red",   current: true,  url: "#red"  ],
    [name: "green", current: false, url: "#green"],
    [name: "blue",  current: false, url: "#blue" ],
  ]
]

IO.puts SlimFast.render(source, context)
