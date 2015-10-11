defmodule UncompiledBench do
  use Benchfella

  @context [
    header: "Colors",
    item: [
      [name: "red",   current: true,  url: "#red"  ],
      [name: "green", current: false, url: "#green"],
      [name: "blue",  current: false, url: "#blue" ],
    ]
  ]

  before_each_bench _ do
    source = File.read!("view.slim")
    {:ok, source}
  end

  bench "render" do
    SlimFast.render(bench_context, @context)
  end
end
