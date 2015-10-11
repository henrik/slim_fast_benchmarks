defmodule CompiledBench do
  use Benchfella

  @header "Colors"
  @item [
    [name: "red",   current: true,  url: "#red"  ],
    [name: "green", current: false, url: "#green"],
    [name: "blue",  current: false, url: "#blue" ],
  ]

  require SlimFast
  SlimFast.function_from_file :defp, :render_template, "view.slim", [:header, :item]

  bench "render" do
    render_template(@header, @item)
  end
end
