local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

  -- Simple test
  s("test", {
    t "func Test",
    i(1, "Name"),
    t "(t *testing.T) {",
    t { "", "\t" },
    i(2),
    t { "", "}" },
  }),

  -- Table driven test
  s("tt", {
    t "func Test",
    i(1, "FunctionName"),
    t "(t *testing.T) {",
    t { "", "" },
    t { "", "\ttests := []struct {" },
    t { "", "\t\tname string" },
    t { "", "\t\tinput int" },
    t { "", "\t\texpected int" },
    t { "", "\t}{" },
    t { "", "\t\t{" },
    t { "", '\t\t\tname: "case 1",' },
    t { "", "\t\t\tinput: " },
    i(2, "1"),
    t ",",
    t { "", "\t\t\texpected: " },
    i(3, "2"),
    t ",",
    t { "", "\t\t}," },
    t { "", "\t}" },
    t { "", "" },
    t { "", "\tfor _, tt := range tests {" },
    t { "", "\t\tt.Run(tt.name, func(t *testing.T) {" },
    t { "", "\t\t\tresult := " },
    i(4, "FunctionName"),
    t "(tt.input)",
    t { "", "" },
    t { "", "\t\t\tif result != tt.expected {" },
    t { "", '\t\t\t\tt.Errorf("expected %v, got %v", tt.expected, result)' },
    t { "", "\t\t\t}" },
    t { "", "\t\t})" },
    t { "", "\t}" },
    t { "", "}" },
  }),
}
