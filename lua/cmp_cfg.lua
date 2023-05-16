local success, cmp = pcall(require, "cmp")

local snip_success, snip = pcall(require, "luasnip")
if not snip_success then
	return
end

if success then
	cmp.setup({
		snippet = {
			expand = function(args)
				snip.lsp_expand(args.body)
			end,
		},
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
		}),
		experimental = {
			ghost_text = true,
		},
	})
end
