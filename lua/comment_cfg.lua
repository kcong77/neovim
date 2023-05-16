local success, comment = pcall(require, "Comment")
if success then
	comment.setup({
		toggler = {
			line = "<leader>ck",
			block = "<leader>cb",
		},
		opleader = {
			line = "<leader>ck",
			block = "<leader>cb",
		},
		mappings = {
			basic = true,
			extra = false,
		},
	})
end
