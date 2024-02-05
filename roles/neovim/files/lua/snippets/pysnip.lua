local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
ls.add_snippets("python", {
  s("bc", {
    t("#"),
    t({ string.rep("-", 70), "" }),
    t("# "),
    i(1, "Comment"),
    t({ "", "" }),
    t("#"),
    t(string.rep("-", 70)),
  }),
})
