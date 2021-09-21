local generator = function()
    local el_segments = {}

    local segments = {}
    local subscribe = require("el.subscribe")

    local extensions = require('el.extensions')
    table.insert(el_segments, extensions.mode) -- mode returns the current mode.
    table.insert(segments,
      subscribe.buf_autocmd(
        "el_file_icon",
        "BufRead",
        function(_, buffer)
          return extensions.file_icon(_, buffer)
        end
      ))

    -- expresss_line provides a helpful wrapper for these.
    -- You can check out el.builtin
    local builtin = require('el.builtin')
    table.insert(el_segments, builtin.file)
  
    table.insert(segments,
    subscribe.buf_autocmd(
      "el_git_branch",
      "BufEnter",
      function(window, buffer)
        local branch = extensions.git_branch(window, buffer)
        if branch then
          return branch
        end
      end
    ))
  
  table.insert(segments,
    subscribe.buf_autocmd(
      "el_file_icon",
      "BufRead",
      function(_, buffer)
        return extensions.file_icon(_, buffer)
      end
    ))

    return el_segments
end

-- And then when you're all done, just call
require('el').setup { generator = generator }

