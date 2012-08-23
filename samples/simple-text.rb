Shoes.app :title => "Shoes 4", :width => 400 do
  stack { para "I'm a para" }
  #stack { title "I'm a title" }
  stack { para "I'm a ", strong("very strong"), " para" }
  #stack { inscription "small inscription" }
  #stack { inscription "small but ", strong("bold"), " text", strong("!") }
  #stack { banner "HOLY BIG" }
  stack { para "test", "test", "test", strong("test"), "test" }
end
