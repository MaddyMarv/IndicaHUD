local mod = get_mod("IndicaHUD")

local show_welcome_msg = mod:get("show_welcome_msg")

mod.on_setting_changed = function(setting_id)
	if setting_id == "show_welcome_msg" then
		show_welcome_msg = mod:get("show_welcome_msg")
	end
end

mod:command("indicahud", mod:localize("command_indicahud_description"), function()
	mod:echo(mod:localize("msg_chat_help"))
end)

-- StateGameplay is entered on every load-in (hub and missions). DMF holds the echo until chat exists.
mod.on_game_state_changed = function(status, state_name)
	if show_welcome_msg and status == "enter" and state_name == "StateGameplay" and mod:is_enabled() then
		mod:echo(mod:localize("msg_chat_help"))
	end
end

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
