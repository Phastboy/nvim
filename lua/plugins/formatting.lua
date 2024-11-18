return {
    {
      "prettier/vim-prettier",
      run = "yarn install --frozen-lockfile --production",
      ft = { "javascript", "typescript", "css", "json", "graphql", "markdown" }
    },
  }