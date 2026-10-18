local mod = get_mod("IndicaHUD")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id = "general",
				type = "group",
				tab = mod:localize("tab_general"),
				sub_widgets = {
					{
						setting_id = "show_welcome_msg",
						type = "checkbox",
						default_value = false,
					},
				},
			},
		},
	},
}
