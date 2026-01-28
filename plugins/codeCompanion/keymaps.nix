[
  {
    mode = "n";
    key = "<leader>c";
    action = "CodeCompanion Actions";
  }
  {
    mode = "n";
    key = "<leader>cc";
    action = "<cmd>CodeCompanion /commit<CR>";
    options.desc = "Generate Commit";
  }
  {
    mode = "n";
    key = "<leader>ch";
    action = "<cmd>CodeCompanionChat<CR>";
    options.desc = "Open Chat";
  }
  {
    mode = "n";
    key = "<leader>cl";
    action = "<cmd>'<,'>CodeCompanion /lsp<CR>";
    options.desc = "Explain LSP Diagnostic";
  }
  {
    mode = "n";
    key = "<leader>ce";
    action = "<cmd>'<,'>CodeCompanion /explain<CR>";
    options.desc = "Explain Code";
  }
  {
    mode = "n";
    key = "<leader>cf";
    action = "<cmd>'<,'>CodeCompanion /fix<CR>";
    options.desc = "Fix Code";
  }
  {
    mode = "n";
    key = "<leader>ct";
    action = "<cmd>'<,'>CodeCompanion /test<CR>";
    options.desc = "Generate Unit Test";
  }
]
