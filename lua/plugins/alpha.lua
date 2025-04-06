if true then
  return {}
end
return {
  {
    "goolord/alpha-nvim",
    dependencies = { "echasnovski/mini.icons" },
    opts = function(_, opts)
      local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	                   [ @Mar1O9 ]
    ]]
      opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    end,
  },
}
