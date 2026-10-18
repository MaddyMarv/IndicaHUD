local mod = get_mod("IndicaHUD")

mod:command("indicahud", mod:localize("command_indicahud_description"), function()
	mod:echo(mod:localize("msg_chat_help"))
end)

local on_all_mods_loaded = mod.on_all_mods_loaded
mod.on_all_mods_loaded = function(...)
	if on_all_mods_loaded then
		on_all_mods_loaded(...)
	end

	local hud_studio = get_mod("hud_studio")
	local blocks = hud_studio and hud_studio.register_blocks and mod:io_dofile("IndicaHUD/hud_studio_blocks/hud_studio_blocks")
	if blocks then
		hud_studio.register_blocks(mod, blocks)
	end
end
