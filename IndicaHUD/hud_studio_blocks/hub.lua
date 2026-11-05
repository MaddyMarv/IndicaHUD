return {
	blocks = {
		{
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			gamemodes = {
				meatgrinder = true,
				mourningstar = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			read_from = {
				offer = false,
			},
			label = "Hub Player 1",
			localizations = {},
			member_id = "player_1",
			name = "player_1",
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
								source = "player_1",
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
								source = "player_1",
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
						player_1 = {
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
								source = "player_1",
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
								source = "player_1",
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
								body = "local dx = ({ cryptic = 1, broker = 1, zealot = 1, psyker = -1 })[player_1.identity.id] or 0\
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
								source = "player_1",
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
								source = "player_1",
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
								source = "player_1",
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
				10,
				196,
			},
			players = {
				player_1 = {
					in_party = true,
				},
			},
			screen_anchor = "bottom_left",
			version = 4,
			visible = {
				kind = "conditions",
			},
		},
		{
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			gamemodes = {
				meatgrinder = true,
				mourningstar = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Hub Player 2",
			localizations = {},
			member_id = "player_2",
			name = "player_2",
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
			screen_anchor = "bottom_left",
			shift = {
				body = "local function is_human(p)\
    return p and p.state and p.state.in_party and not p.state.bot\
end\
\
local p2 = is_human(sources.player_2)\
local p3 = is_human(sources.player_3)\
local p4 = is_human(sources.player_4)\
\
local count = (p2 and 1 or 0) + (p3 and 1 or 0) + (p4 and 1 or 0)\
\
if count == 1 then\
    shift = { 311, 0 }\
elseif count == 2 then\
    shift = { 155.5, 0 }\
else\
    shift = { 0, 0 }\
end",
				kind = "code",
			},
			version = 4,
			visible = {
				kind = "conditions",
			},
		},
		{
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			gamemodes = {
				meatgrinder = true,
				mourningstar = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Hub Player 3",
			localizations = {},
			member_id = "player_3",
			name = "player_3",
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
								source = "player_3",
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
								source = "player_3",
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
						player_3 = {
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
								source = "player_3",
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
								source = "player_3",
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
								body = "local dx = ({ cryptic = 1, broker = 1, zealot = 1, psyker = -1 })[player_3.identity.id] or 0\
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
								source = "player_3",
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
								source = "player_3",
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
								source = "player_3",
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
				729,
				203,
			},
			players = {
				player_3 = {
					in_party = true,
				},
			},
			scale = {
				kind = "fixed",
				value = 0.90000000000000002,
			},
			screen_anchor = "bottom_left",
			shift = {
				body = "local function is_human(p)\
    return p and p.state and p.state.in_party and not p.state.bot\
end\
\
local p2 = is_human(sources.player_2)\
local p3 = is_human(sources.player_3)\
local p4 = is_human(sources.player_4)\
\
local count = (p2 and 1 or 0) + (p3 and 1 or 0) + (p4 and 1 or 0)\
\
if count == 2 then\
    if p2 then\
        shift = { 155.5, 0 }\
    else\
        shift = { -155.5, 0 }\
    end\
else\
    shift = { 0, 0 }\
end",
				kind = "code",
			},
			version = 4,
			visible = {
				kind = "conditions",
			},
		},
		{
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			gamemodes = {
				meatgrinder = true,
				mourningstar = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Hub Player 4",
			localizations = {},
			member_id = "player_4",
			name = "player_4",
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
								source = "player_4",
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
								source = "player_4",
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
						player_4 = {
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
								source = "player_4",
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
								source = "player_4",
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
								body = "local dx = ({ cryptic = 1, broker = 1, zealot = 1, psyker = -1 })[player_4.identity.id] or 0\
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
								source = "player_4",
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
								source = "player_4",
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
								source = "player_4",
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
				1040,
				203,
			},
			players = {
				player_4 = {
					in_party = true,
				},
			},
			scale = {
				kind = "fixed",
				value = 0.90000000000000002,
			},
			screen_anchor = "bottom_left",
			shift = {
				body = "local function is_human(p)\
    return p and p.state and p.state.in_party and not p.state.bot\
end\
\
local p2 = is_human(sources.player_2)\
local p3 = is_human(sources.player_3)\
local p4 = is_human(sources.player_4)\
\
local count = (p2 and 1 or 0) + (p3 and 1 or 0) + (p4 and 1 or 0)\
\
if count == 1 then\
    shift = { -311, 0 }\
elseif count == 2 then\
    shift = { -155.5, 0 }\
else\
    shift = { 0, 0 }\
end\
",
				kind = "code",
			},
			version = 4,
			visible = {
				kind = "conditions",
			},
		},
	},
	kind = "folder",
	summary = "Mourningstar hub frames and portraits for you and your team.",
	label = "Hub Portraits (Full Set)",
	read_from = {
		offer = false,
	},
}