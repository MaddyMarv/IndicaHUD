return {
	gamemodes = {
		meatgrinder = true,
		mourningstar = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "Hub Teammate",
	summary = "Mourningstar hub portrait for a teammate. Pick player 2, 3, 4 or spectator.",
	library_label = "Hub Teammate",
	read_from = {
		subject = "player_2",
		offer = {
			"player_2",
			"player_3",
			"player_4",
			"player_spectated",
		},
	},
	localizations = {},
	member_id = "player_hub",
	name = "player_hub",
	nodes = {
		{
			id = "background",
			label = "Background",
			offset = {
				-955,
				213,
			},
			style = {
				color = {
					255,
					48,
					119,
					238,
				},
				size = {
					315,
					120,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/buttons/background_selected",
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "profile.portrait",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "portrait",
			label = "Portrait",
			offset = {
				-952,
				236,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					80,
					90,
				},
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "fixed",
					},
					font_size = {
						kind = "fixed",
					},
					shadow = {
						kind = "fixed",
					},
					text = {
						field = "profile.syn_display_name",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "true_level_name",
			label = "True Level Name",
			offset = {
				-946,
				210,
			},
			players = {
				player_2 = {
					in_party = true,
				},
			},
			style = {
				align = "center_left",
				color = {
					255,
					255,
					255,
					255,
				},
				font_size = 18,
				font_type = "proxima_nova_bold",
				segment_order = {
					1,
				},
				shadow = true,
				shrink_to_fit = true,
				size = {
					295,
					28,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				value_mode = "chain",
			},
		},
		{
			id = "frame_panel",
			label = "Panel Frame",
			offset = {
				-960,
				229,
			},
			style = {
				color = {
					255,
					80,
					145,
					255,
				},
				size = {
					322,
					17,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/mission_board/mission_frame_selected_corner",
			},
		},
		{
			id = "frame_blitz",
			label = "Blitz Frame",
			offset = {
				-703,
				272,
			},
			style = {
				color = {
					255,
					80,
					145,
					255,
				},
				size = {
					65,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/mission_board/mission_frame_selected_corner",
			},
		},
		{
			id = "frame_insignia",
			label = "Insignia Frame",
			offset = {
				-703,
				227,
			},
			style = {
				color = {
					255,
					80,
					145,
					255,
				},
				size = {
					65,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/mission_board/mission_frame_selected_corner",
			},
		},
		{
			id = "frame_melee",
			label = "Melee Frame",
			offset = {
				-805,
				272,
			},
			style = {
				color = {
					255,
					80,
					145,
					255,
				},
				size = {
					120,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/mission_board/mission_frame_selected_corner",
			},
		},
		{
			id = "frame_ranged",
			label = "Ranged Frame",
			offset = {
				-805,
				227,
			},
			style = {
				color = {
					255,
					80,
					145,
					255,
				},
				size = {
					120,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/mission_board/mission_frame_selected_corner",
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "equipment.ranged_icon",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "icon_ranged",
			label = "Ranged Icon",
			offset = {
				-795,
				240,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					100,
					40,
				},
			},
			type = "rect",
			values = {
				clip_amount = 100,
				clip_mode = "clip_center",
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "equipment.melee_icon",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "icon_melee",
			label = "Melee Icon",
			offset = {
				-795,
				284,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					100,
					40,
				},
			},
			type = "rect",
			values = {
				clip_amount = 100,
				clip_mode = "clip_center",
				material_fallback = "content/ui/materials/backgrounds/mutators/havoc_mutator_parasite",
				rotation = -1,
			},
		},
		{
			callbacks = {
				value = {
					offset = {
						body = "local dx = ({ cryptic = 1, broker = 1, zealot = 1, psyker = -1 })[player_2.identity.id] or 0\
\
for _, n in ipairs(block.nodes) do\
    if n.label == \"class insignia\" then\
        offset = { n.offset[1] + dx, n.offset[2] }\
        break\
    end\
end\
",
						kind = "code",
					},
					text = {
						field = "identity.text_icon",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {},
						},
						kind = "conditions",
					},
				},
			},
			id = "class_insignia",
			label = "class insignia",
			offset = {
				-691,
				240,
			},
			style = {
				align = "center_center",
				color = {
					255,
					255,
					255,
					255,
				},
				font_size = 30,
				shadow = true,
				size = {
					40,
					40,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "blitz.icon",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "icon_blitz",
			label = "Blitz Icon",
			offset = {
				-691,
				284,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					40,
					40,
				},
			},
			type = "rect",
			values = {
				clip_amount = 100,
				clip_mode = "clip_center",
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "ability.icon_hexagon",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "icon_ability",
			label = "Ability Icon",
			offset = {
				-869.16216216216219,
				253.32432432432432,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					70,
					61,
				},
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					material = {
						kind = "fixed",
					},
				},
			},
			id = "frame_ability",
			label = "Ability Frame",
			offset = {
				-872,
				251,
			},
			style = {
				color = {
					255,
					255,
					140,
					30,
				},
				size = {
					75,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/talents/menu/frame_combat_highlight",
				rotation = 0,
			},
		},
		{
			callbacks = {
				value = {
					material = {
						kind = "fixed",
					},
				},
			},
			id = "highlight_ability",
			label = "Ability Highlight",
			offset = {
				-872,
				251,
			},
			style = {
				color = {
					255,
					255,
					140,
					30,
				},
				size = {
					75,
					65,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/talents/menu/frame_combat_highlight",
				rotation = 0,
			},
		},
	},
	offset = {
		418,
		203,
	},
	players = {
		player_2 = {
			in_party = true,
		},
	},
	scale = {
		kind = "fixed",
		value = 0.90000000000000002,
	},
	version = 4,
	visible = {
		kind = "conditions",
	},
}