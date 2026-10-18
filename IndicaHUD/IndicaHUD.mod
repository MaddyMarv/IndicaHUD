return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`IndicaHUD` encountered an error loading the Darktide Mod Framework.")

		new_mod("IndicaHUD", {
			mod_script = "IndicaHUD/scripts/mods/IndicaHUD/IndicaHUD",
			mod_data = "IndicaHUD/scripts/mods/IndicaHUD/IndicaHUD_data",
			mod_localization = "IndicaHUD/scripts/mods/IndicaHUD/IndicaHUD_localization",
		})
	end,
	packages = {},
}
