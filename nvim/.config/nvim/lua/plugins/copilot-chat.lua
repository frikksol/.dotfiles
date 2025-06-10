return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { '<leader>Zc', ':CopilotChat<CR>', mode = 'n', desc = 'Open Copilot Chat' },
      { '<leader>Ze', ':CopilotChatExplain<CR>', mode = 'v', desc = 'Explain Code' },
      { '<leader>Zr', ':CopilotChatReview<CR>', mode = 'v', desc = 'Review Code' },
      { '<leader>Zf', ':CopilotChatFix<CR>', mode = 'v', desc = 'Fix Code Issues' },
      { '<leader>Zo', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Optimize Code' },
      { '<leader>Zd', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Generate Docs' },
      { '<leader>Zt', ':CopilotChatTests<CR>', mode = 'v', desc = 'Generate Tests' },
      { '<leader>Zm', ':CopilotChatCommit<CR>', mode = 'n', desc = 'Generate Commit Message' },
      { '<leader>Zs', ':CopilotChatCommit<CR>', mode = 'v', desc = 'Generate Commit Message for Selection' },
    },
  },
}
