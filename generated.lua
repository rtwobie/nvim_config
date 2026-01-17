require('base16-colorscheme').setup({
  base00 = "#0f1417",
  base01 = "#0a0f11",
  base02 = "#171c1f",
  base03 = "#40484c",
  base04 = "#c0c8cd",
  base05 = "#dfe3e6",
  base06 = "#2c3134",
  base07 = "#353a3d",
  base08 = "#b3afe3",
  base09 = "#c5c2ea",
  base0A = "#b4cad5",
  base0B = "#8ad0ef",
  base0C = "#454364",
  base0D = "#004d63",
  base0E = "#354a53",
  base0F = "#93b3c3",
})

vim.api.nvim_set_hl(0, 'Visual', {
  bg = '#004d63',
  fg = '#0f1417',
})

require('lualine').setup({
  options = {
    theme = "base16",
  }
})
local function source_matugen()
  -- Update this with the location of your output file
  local matugen_path = os.getenv("HOME") .. "/.config/nvim/generated.lua"  -- dofile doesn't expand $HOME or ~

  local file, err = io.open(matugen_path, "r")
  -- If the matugen file does not exist (yet or at all), we must initialize a color scheme ourselves
  if err ~= nil then
    -- Some placeholder theme, this will be overwritten once matugen kicks in
    vim.cmd('colorscheme base16-catppuccin-mocha')

    -- Optionally print something to the user
    vim.print("A matugen style file was not found, but that's okay! The colorscheme will dynamically change if matugen runs!")
  else
    dofile(matugen_path)
    io.close(file)
  end
end

vim.api.nvim_create_autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = auxiliary_function,
})

-- Main entrypoint on matugen reloads
local function auxiliary_function()
  -- Load the matugen style file to get all the new colors
  source_matugen()

  -- Because reloading base16 overwrites lualine configuration, just source lualine here
  dofile(os.getenv("HOME") .. '/.config/nvim/config/plugins/lualine-nvim.lua') -- path of your lualine setup

  -- Any other options you wish to set upon matugen reloads can also go here!
  vim.api.nvim_set_hl(0, "Comment", { italic = true })
end
