local mod = get_mod("IndicaHUD")

local function show_help()
	mod:echo(mod:localize("msg_chat_help"))
end

mod:command("indicahud", mod:localize("command_indicahud_description"), show_help)

-- One-time setup hint on the first load-in. The flag lives in the user's mod settings, which DMF
-- writes to disk right after every game state change. DMF holds the echo until chat exists.
mod.on_game_state_changed = function(status, state_name)
	if status == "enter" and state_name == "StateGameplay" and mod:is_enabled() and not mod:get("setup_hint_shown") then
		mod:set("setup_hint_shown", true)
		show_help()
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
