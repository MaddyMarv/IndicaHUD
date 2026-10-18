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
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			read_from = {
				offer = false,
			},
			label = "Compact Player Panel 2",
			library_label = "Compact Player Panel 2",
			localizations = {},
			member_id = "compact_player_panel_2",
			name = "compact_player_panel_2",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "state.downed",
										kind = "source",
										source = "player_2",
										value = false,
									},
									list = {
										{
											color = {
												255,
												255,
												31,
												31,
											},
											pct = 0,
										},
										{
											color = {
												255,
												210,
												210,
												210,
											},
											pct = 0,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "boolean",
								},
							},
							current = {
								field = "status.health_percent",
								kind = "source",
								source = "player_2",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "health_bar",
					label = "Health bar",
					offset = {
						-70,
						189.25,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							255,
							255,
							255,
						},
						rotation = 0,
						segment_gap = 4,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									243,
									87,
									87,
								},
								pct = 0,
							},
							{
								color = {
									255,
									245,
									245,
									245,
								},
								pct = 25,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_2",
							},
							current = {
								field = "ability.progress_percent_to_max_charges",
								kind = "source",
								source = "player_2",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "ability.max_charges",
								kind = "source",
								source = "player_2",
							},
							thresholds = {
								kind = "fixed",
							},
						},
					},
					id = "ability_charge_bar",
					label = "Ability Charge Bar",
					offset = {
						-70,
						173,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							57,
							223,
							186,
						},
						segment_gap = 3,
						size = {
							114,
							4,
						},
						thresholds = {
							{
								color = {
									255,
									248,
									80,
									63,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							current = {
								field = "status.corruption_percent",
								kind = "source",
								source = "player_2",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "corruption_bar",
					label = "Corruption bar",
					offset = {
						-70,
						189,
					},
					style = {
						bg_color = {
							0,
							0,
							0,
							0,
						},
						color = {
							255,
							174,
							81,
							220,
						},
						orientation = "right_left",
						rotation = 0,
						segment_gap = 5,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									177,
									120,
									255,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 68,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									list = {
										{
											color = {
												255,
												120,
												220,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												237,
												170,
												17,
											},
											pct = 101,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "percent",
								},
							},
							current = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_2",
							},
							max = {
								kind = "fixed",
							},
						},
					},
					id = "progress_bar_1",
					label = "Toughness Bar",
					offset = {
						-70,
						180,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							125,
							225,
							234,
						},
						size = {
							114,
							6,
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_2",
							},
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "identity.text_icon",
								kind = "source",
								source = "player_2",
							},
							text2 = {
								kind = "fixed",
							},
							text3 = {
								field = "profile.name",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "character_name",
					label = "character name",
					offset = {
						-71,
						152,
					},
					style = {
						align = "center_left",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "proxima_nova_bold",
						segment_order = {
							1,
							2,
							3,
						},
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						mode3 = "fixed",
						text = "Text",
						text2 = " ",
						value_mode = "chain",
					},
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
							text = {
								field = "profile.account_name",
								kind = "source",
								source = "player_2",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "profile.account_name",
												kind = "source",
												source = "player_2",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "account_name",
					label = "account name",
					offset = {
						-58,
						136,
					},
					style = {
						align = "center_right",
						color = {
							255,
							128,
							128,
							128,
						},
						font_size = 14,
						font_type = "proxima_nova_bold",
						prefix = "( ",
						segment_order = {
							1,
						},
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
						suffix = ")",
					},
					type = "text",
					values = {
						mode = "fixed",
						opacity = 1,
						text = "Text",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							material = {
								field = "pocketables.icon_small",
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
					id = "pocketable_icon",
					label = "Pocketable Icon",
					offset = {
						-71,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							84,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_ammo_crate",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "stimms.held_color",
								kind = "source",
								source = "player_2",
							},
							material = {
								field = "stimms.icon_small",
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
					id = "stimm_icon",
					label = "Stimm Icon",
					offset = {
						-54,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							83,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "blitz.count_percent",
										kind = "source",
										source = "player_2",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "blitz.count",
								kind = "source",
								source = "player_2",
							},
							text2 = {
								field = "equipment.melee_special_charges",
								kind = "source",
								source = "player_2",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "nades",
					label = "nades",
					offset = {
						29,
						205,
					},
					style = {
						align = "left",
						color = {
							255,
							214,
							231,
							207,
						},
						decimals = 0,
						font_size = 16,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							27,
							17,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							material = {
								field = "blitz.icon",
								kind = "source",
								source = "player_2",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "blitz_icon",
					label = "Blitz Icon",
					offset = {
						4,
						199,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							25,
							23,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/hud/icons/party_throwable",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ranged_is_equipped",
										kind = "source",
										source = "player_2",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										field = "ability.progress_percent_to_max_charges",
										kind = "source",
										source = "player_2",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.ranged_icon",
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
					id = "ranged_icon",
					label = "ranged icon",
					offset = {
						-57,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.melee_is_equipped",
										kind = "source",
										source = "player_2",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.melee_icon",
								kind = "source",
								source = "player_2",
							},
							material_fallback = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "melee_icon",
					label = "melee icon",
					offset = {
						-156,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ammo_rounds_remaining_percent",
										kind = "source",
										source = "player_2",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "equipment.ammo_rounds_remaining_percent",
								kind = "source",
								source = "player_2",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_2",
												value = "",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "ammo_percent",
					label = "ammo%",
					offset = {
						-34,
						200,
					},
					style = {
						font_size = 16,
						font_type = "proxima_nova_bold",
						shadow = true,
						size = {
							59,
							24,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "Text",
						text2 = "%",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								field = "state.seconds_until_rescuable",
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
					id = "rescue_text",
					label = "Rescue In...",
					offset = {
						-71,
						180,
					},
					players = {
						player_2 = {
							dead = true,
						},
					},
					style = {
						align = "center_center",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "mono_tide_bold",
						shrink_to_fit = true,
						size = {
							114,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Rescue: ",
						text3 = " sec",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.hogtied",
												kind = "source",
												source = "player_2",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "hogtied",
					label = "Hogtied",
					offset = {
						-66,
						180,
					},
					style = {
						align = "top_center",
						color = {
							255,
							255,
							8,
							82,
						},
						font_size = 24,
						font_type = "mono_tide_bold",
						shadow = true,
						shrink_to_fit = true,
						size = {
							105,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "HOGTIED",
						text3 = " sec",
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
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "rect_1",
					label = "Ability Icon",
					offset = {
						-149,
						155,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							72,
							62,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/veteran_2/veteran_2_combat",
					},
				},
				{
					callbacks = {
						value = {
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_2)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Hexagon Backing",
					offset = {
						-154,
						151,
					},
					style = {
						color = {
							150,
							0,
							0,
							0,
						},
						size = {
							82,
							70,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/zealot_3/zealot_3_combat",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
color = state.bdi and state.bdi.get_color(sources.player_2)",
								kind = "code",
							},
							material = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
material = state.bdi and state.bdi.get_icon(sources.player_2)",
								kind = "code",
							},
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_2)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Status Icon",
					offset = {
						-143,
						156,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							60,
							60,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/mission_board/circumstances/maelstrom_01",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_2",
							},
							material = {
								kind = "fixed",
							},
							visible = {
								field = "ability.is_ready",
								kind = "source",
								source = "player_2",
							},
						},
					},
					id = "ability_ready",
					label = "Ability READY",
					offset = {
						-158,
						144,
					},
					style = {
						color = {
							255,
							204,
							119,
							0,
						},
						size = {
							91,
							83,
						},
						transition = {
							fade_in = 0.20000000000000001,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/frames/talents/hex_frame_glow",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_2",
							},
							material = {
								kind = "fixed",
							},
						},
					},
					id = "combat_frame_inner",
					label = "Combat Frame Inner",
					offset = {
						-162,
						136,
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
							100,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/hud/combat_frame_inner",
					},
				},
			},
			offset = {
				-164,
				245,
			},
			opacity = {
				kind = "fixed",
				value = 1,
			},
			save_name = "compact_player_panel_2",
			screen_anchor = "bottom",
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
    shift = { 217, 0 }\
elseif count == 2 then\
    shift = { 108.5, 0 }\
else\
    shift = { 0, 0 }\
end\
",
				kind = "code",
			},
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "state.exists",
								kind = "source",
								source = "player_2",
							},
							op = "true",
						},
						{
							join = "and",
							lhs = {
								field = "state.bot",
								kind = "source",
								source = "player_2",
							},
							op = "false",
						},
					},
				},
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
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Compact Player Panel 3",
			library_label = "Compact Player Panel 3",
			localizations = {},
			member_id = "compact_player_panel_3",
			name = "compact_player_panel_3",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "state.downed",
										kind = "source",
										source = "player_3",
										value = false,
									},
									list = {
										{
											color = {
												255,
												255,
												31,
												31,
											},
											pct = 0,
										},
										{
											color = {
												255,
												210,
												210,
												210,
											},
											pct = 0,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "boolean",
								},
							},
							current = {
								field = "status.health_percent",
								kind = "source",
								source = "player_3",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "health_bar",
					label = "Health bar",
					offset = {
						-70,
						189.25,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							255,
							255,
							255,
						},
						rotation = 0,
						segment_gap = 4,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									243,
									87,
									87,
								},
								pct = 0,
							},
							{
								color = {
									255,
									245,
									245,
									245,
								},
								pct = 25,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_3",
							},
							current = {
								field = "ability.progress_percent_to_max_charges",
								kind = "source",
								source = "player_3",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "ability.max_charges",
								kind = "source",
								source = "player_3",
							},
							thresholds = {
								kind = "fixed",
							},
						},
					},
					id = "ability_charge_bar",
					label = "Ability Charge Bar",
					offset = {
						-70,
						173,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							57,
							223,
							186,
						},
						segment_gap = 3,
						size = {
							114,
							4,
						},
						thresholds = {
							{
								color = {
									255,
									248,
									80,
									63,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							current = {
								field = "status.corruption_percent",
								kind = "source",
								source = "player_3",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "corruption_bar",
					label = "Corruption bar",
					offset = {
						-70,
						189,
					},
					style = {
						bg_color = {
							0,
							0,
							0,
							0,
						},
						color = {
							255,
							174,
							81,
							220,
						},
						orientation = "right_left",
						rotation = 0,
						segment_gap = 5,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									177,
									120,
									255,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 68,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									list = {
										{
											color = {
												255,
												120,
												220,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												237,
												170,
												17,
											},
											pct = 101,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "percent",
								},
							},
							current = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_3",
							},
							max = {
								kind = "fixed",
							},
						},
					},
					id = "progress_bar_1",
					label = "Toughness Bar",
					offset = {
						-70,
						180,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							125,
							225,
							234,
						},
						size = {
							114,
							6,
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_3",
							},
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "identity.text_icon",
								kind = "source",
								source = "player_3",
							},
							text2 = {
								kind = "fixed",
							},
							text3 = {
								field = "profile.name",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "character_name",
					label = "character name",
					offset = {
						-71,
						152,
					},
					style = {
						align = "center_left",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "proxima_nova_bold",
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						mode3 = "fixed",
						text = "Text",
						text2 = " ",
						value_mode = "chain",
					},
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
							text = {
								field = "profile.account_name",
								kind = "source",
								source = "player_3",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "profile.account_name",
												kind = "source",
												source = "player_3",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "account_name",
					label = "account name",
					offset = {
						-58,
						136,
					},
					style = {
						align = "center_right",
						color = {
							255,
							128,
							128,
							128,
						},
						font_size = 14,
						font_type = "proxima_nova_bold",
						prefix = "( ",
						segment_order = {
							1,
						},
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
						suffix = ")",
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "Text",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							material = {
								field = "pocketables.icon_small",
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
					id = "pocketable_icon",
					label = "Pocketable Icon",
					offset = {
						-71,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							84,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_ammo_crate",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "stimms.held_color",
								kind = "source",
								source = "player_3",
							},
							material = {
								field = "stimms.icon_small",
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
					id = "stimm_icon",
					label = "Stimm Icon",
					offset = {
						-54,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							83,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "blitz.count_percent",
										kind = "source",
										source = "player_3",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "blitz.count",
								kind = "source",
								source = "player_3",
							},
							text2 = {
								field = "equipment.melee_special_charges",
								kind = "source",
								source = "player_3",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "nades",
					label = "nades",
					offset = {
						29,
						205,
					},
					style = {
						align = "left",
						color = {
							255,
							214,
							231,
							207,
						},
						decimals = 0,
						font_size = 16,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							27,
							17,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							material = {
								field = "blitz.icon",
								kind = "source",
								source = "player_3",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "blitz_icon",
					label = "Blitz Icon",
					offset = {
						4,
						199,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							25,
							23,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/hud/icons/party_throwable",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ranged_is_equipped",
										kind = "source",
										source = "player_3",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										field = "ability.progress_percent_to_max_charges",
										kind = "source",
										source = "player_3",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.ranged_icon",
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
					id = "ranged_icon",
					label = "ranged icon",
					offset = {
						-57,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.melee_is_equipped",
										kind = "source",
										source = "player_3",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.melee_icon",
								kind = "source",
								source = "player_3",
							},
							material_fallback = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "melee_icon",
					label = "melee icon",
					offset = {
						-156,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ammo_rounds_remaining_percent",
										kind = "source",
										source = "player_3",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "equipment.ammo_rounds_remaining_percent",
								kind = "source",
								source = "player_3",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_3",
												value = "",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "ammo_percent",
					label = "ammo%",
					offset = {
						-34,
						200,
					},
					style = {
						font_size = 16,
						font_type = "proxima_nova_bold",
						shadow = true,
						size = {
							59,
							24,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "Text",
						text2 = "%",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								field = "state.seconds_until_rescuable",
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
					id = "rescue_text",
					label = "Rescue In...",
					offset = {
						-71,
						180,
					},
					players = {
						player_3 = {
							dead = true,
						},
					},
					style = {
						align = "center_center",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "mono_tide_bold",
						shrink_to_fit = true,
						size = {
							114,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Rescue: ",
						text3 = " sec",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.hogtied",
												kind = "source",
												source = "player_3",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "hogtied",
					label = "Hogtied",
					offset = {
						-66,
						180,
					},
					style = {
						align = "top_center",
						color = {
							255,
							255,
							8,
							82,
						},
						font_size = 24,
						font_type = "mono_tide_bold",
						shadow = true,
						shrink_to_fit = true,
						size = {
							105,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "HOGTIED",
						text3 = " sec",
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
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "rect_1",
					label = "Ability Icon",
					offset = {
						-149,
						155,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							72,
							62,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/veteran_2/veteran_2_combat",
					},
				},
				{
					callbacks = {
						value = {
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_3)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Hexagon Backing",
					offset = {
						-154,
						151,
					},
					style = {
						color = {
							150,
							0,
							0,
							0,
						},
						size = {
							82,
							70,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/zealot_3/zealot_3_combat",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
color = state.bdi and state.bdi.get_color(sources.player_3)",
								kind = "code",
							},
							material = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
material = state.bdi and state.bdi.get_icon(sources.player_3)",
								kind = "code",
							},
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_3)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Status Icon",
					offset = {
						-143,
						156,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							60,
							60,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/mission_board/circumstances/maelstrom_01",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_3",
							},
							material = {
								kind = "fixed",
							},
							visible = {
								field = "ability.is_ready",
								kind = "source",
								source = "player_3",
							},
						},
					},
					id = "ability_ready",
					label = "Ability READY",
					offset = {
						-158,
						144,
					},
					style = {
						color = {
							255,
							204,
							119,
							0,
						},
						size = {
							91,
							83,
						},
						transition = {
							fade_in = 0.20000000000000001,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/frames/talents/hex_frame_glow",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_3",
							},
							material = {
								kind = "fixed",
							},
						},
					},
					id = "combat_frame_inner",
					label = "Combat Frame Inner",
					offset = {
						-162,
						136,
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
							100,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/hud/combat_frame_inner",
					},
				},
			},
			offset = {
				53,
				245,
			},
			opacity = {
				kind = "fixed",
				value = 1,
			},
			save_name = "compact_player_panel_3",
			screen_anchor = "bottom",
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
        shift = { 108.5, 0 }\
    else\
        shift = { -109, 0 }\
    end\
else\
    shift = { 0, 0 }\
end\
",
				kind = "code",
			},
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "state.exists",
								kind = "source",
								source = "player_3",
							},
							op = "true",
						},
						{
							join = "and",
							lhs = {
								field = "state.bot",
								kind = "source",
								source = "player_3",
							},
							op = "false",
						},
					},
				},
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
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Compact Player Panel 4",
			library_label = "Compact Player Panel 4",
			localizations = {},
			member_id = "compact_player_panel_4",
			name = "compact_player_panel_4",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "state.downed",
										kind = "source",
										source = "player_4",
										value = false,
									},
									list = {
										{
											color = {
												255,
												255,
												31,
												31,
											},
											pct = 0,
										},
										{
											color = {
												255,
												210,
												210,
												210,
											},
											pct = 0,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "boolean",
								},
							},
							current = {
								field = "status.health_percent",
								kind = "source",
								source = "player_4",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "health_bar",
					label = "Health bar",
					offset = {
						-70,
						189.25,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							255,
							255,
							255,
						},
						rotation = 0,
						segment_gap = 4,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									243,
									87,
									87,
								},
								pct = 0,
							},
							{
								color = {
									255,
									245,
									245,
									245,
								},
								pct = 25,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_4",
							},
							current = {
								field = "ability.progress_percent_to_max_charges",
								kind = "source",
								source = "player_4",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "ability.max_charges",
								kind = "source",
								source = "player_4",
							},
							thresholds = {
								kind = "fixed",
							},
						},
					},
					id = "ability_charge_bar",
					label = "Ability Charge Bar",
					offset = {
						-70,
						173,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							57,
							223,
							186,
						},
						segment_gap = 3,
						size = {
							114,
							4,
						},
						thresholds = {
							{
								color = {
									255,
									248,
									80,
									63,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							current = {
								field = "status.corruption_percent",
								kind = "source",
								source = "player_4",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "corruption_bar",
					label = "Corruption bar",
					offset = {
						-70,
						189,
					},
					style = {
						bg_color = {
							0,
							0,
							0,
							0,
						},
						color = {
							255,
							174,
							81,
							220,
						},
						orientation = "right_left",
						rotation = 0,
						segment_gap = 5,
						size = {
							114,
							10,
						},
						thresholds = {
							{
								color = {
									255,
									177,
									120,
									255,
								},
								pct = 0,
							},
						},
					},
					type = "progress_bar",
					values = {
						current = 68,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									list = {
										{
											color = {
												255,
												120,
												220,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												237,
												170,
												17,
											},
											pct = 101,
										},
									},
									mirror = {
										current = "current",
										max = "max",
									},
									scale = "percent",
								},
							},
							current = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_4",
							},
							max = {
								kind = "fixed",
							},
						},
					},
					id = "progress_bar_1",
					label = "Toughness Bar",
					offset = {
						-70,
						180,
					},
					style = {
						bg_color = {
							140,
							0,
							0,
							0,
						},
						color = {
							255,
							125,
							225,
							234,
						},
						size = {
							114,
							6,
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_4",
							},
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "identity.text_icon",
								kind = "source",
								source = "player_4",
							},
							text2 = {
								kind = "fixed",
							},
							text3 = {
								field = "profile.name",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "character_name",
					label = "character name",
					offset = {
						-71,
						152,
					},
					style = {
						align = "center_left",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "proxima_nova_bold",
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						mode3 = "fixed",
						text = "Text",
						text2 = " ",
						value_mode = "chain",
					},
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
							text = {
								field = "profile.account_name",
								kind = "source",
								source = "player_4",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "profile.account_name",
												kind = "source",
												source = "player_4",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "account_name",
					label = "account name",
					offset = {
						-58,
						136,
					},
					style = {
						align = "center_right",
						backing_color = {
							0,
							0,
							0,
							0,
						},
						color = {
							255,
							128,
							128,
							128,
						},
						font_size = 14,
						font_type = "proxima_nova_bold",
						prefix = "( ",
						segment_order = {
							1,
						},
						shadow = true,
						shrink_to_fit = true,
						size = {
							127,
							19,
						},
						suffix = ")",
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "Text",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							material = {
								field = "pocketables.icon_small",
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
					id = "pocketable_icon",
					label = "Pocketable Icon",
					offset = {
						-71,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							84,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_ammo_crate",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "stimms.held_color",
								kind = "source",
								source = "player_4",
							},
							material = {
								field = "stimms.icon_small",
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
					id = "stimm_icon",
					label = "Stimm Icon",
					offset = {
						-54,
						203,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							15,
							15,
						},
					},
					type = "rect",
					values = {
						color_fallback = {
							83,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "blitz.count_percent",
										kind = "source",
										source = "player_4",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "blitz.count",
								kind = "source",
								source = "player_4",
							},
							text2 = {
								field = "equipment.melee_special_charges",
								kind = "source",
								source = "player_4",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "nades",
					label = "nades",
					offset = {
						29,
						205,
					},
					style = {
						align = "left",
						color = {
							255,
							214,
							231,
							207,
						},
						decimals = 0,
						font_size = 16,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							27,
							17,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "fixed",
							},
							material = {
								field = "blitz.icon",
								kind = "source",
								source = "player_4",
							},
							visible = {
								field = "blitz.uses_charges",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "blitz_icon",
					label = "Blitz Icon",
					offset = {
						4,
						199,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							25,
							23,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/hud/icons/party_throwable",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ranged_is_equipped",
										kind = "source",
										source = "player_4",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										field = "ability.progress_percent_to_max_charges",
										kind = "source",
										source = "player_4",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.ranged_icon",
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
					id = "ranged_icon",
					label = "ranged icon",
					offset = {
						-57,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.melee_is_equipped",
										kind = "source",
										source = "player_4",
										value = false,
									},
									list = {
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 25,
										},
										{
											color = {
												255,
												255,
												255,
												255,
											},
											pct = 50,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "boolean",
								},
							},
							material = {
								field = "equipment.melee_icon",
								kind = "source",
								source = "player_4",
							},
							material_fallback = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "melee_icon",
					label = "melee icon",
					offset = {
						-156,
						221,
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
						material = "content/ui/materials/hud/icons/party_ammo",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ammo_rounds_remaining_percent",
										kind = "source",
										source = "player_4",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												249,
												69,
												69,
											},
											pct = 0,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 10,
										},
										{
											color = {
												255,
												132,
												170,
												77,
											},
											pct = 25,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 100,
									},
									scale = "percent",
								},
							},
							text = {
								field = "equipment.ammo_rounds_remaining_percent",
								kind = "source",
								source = "player_4",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_4",
												value = "",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "ammo_percent",
					label = "ammo%",
					offset = {
						-34,
						200,
					},
					style = {
						font_size = 16,
						font_type = "proxima_nova_bold",
						shadow = true,
						size = {
							59,
							24,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "Text",
						text2 = "%",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								field = "state.seconds_until_rescuable",
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
					id = "rescue_text",
					label = "Rescue In...",
					offset = {
						-71,
						180,
					},
					players = {
						player_4 = {
							dead = true,
						},
					},
					style = {
						align = "center_center",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 16,
						font_type = "mono_tide_bold",
						shrink_to_fit = true,
						size = {
							114,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Rescue: ",
						text3 = " sec",
						value_mode = "chain",
					},
				},
				{
					callbacks = {
						value = {
							text = {
								kind = "fixed",
							},
							text2 = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.hogtied",
												kind = "source",
												source = "player_4",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "hogtied",
					label = "Hogtied",
					offset = {
						-66,
						180,
					},
					style = {
						align = "top_center",
						color = {
							255,
							255,
							8,
							82,
						},
						font_size = 24,
						font_type = "mono_tide_bold",
						shadow = true,
						shrink_to_fit = true,
						size = {
							105,
							16,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "HOGTIED",
						text3 = " sec",
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
							visible = {
								conditions = {
									rows = {},
								},
								kind = "conditions",
							},
						},
					},
					id = "rect_1",
					label = "Ability Icon",
					offset = {
						-149,
						155,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							72,
							62,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/veteran_2/veteran_2_combat",
					},
				},
				{
					callbacks = {
						value = {
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_4)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Hexagon Backing",
					offset = {
						-154,
						151,
					},
					style = {
						color = {
							150,
							0,
							0,
							0,
						},
						size = {
							82,
							70,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/zealot_3/zealot_3_combat",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
color = state.bdi and state.bdi.get_color(sources.player_4)",
								kind = "code",
							},
							material = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
material = state.bdi and state.bdi.get_icon(sources.player_4)",
								kind = "code",
							},
							visible = {
								body = "state.bdi = state.bdi or get_mod(\"better_downed_indicators\")\
visible = state.bdi and state.bdi.should_show(sources.player_4)",
								kind = "code",
							},
						},
					},
					id = "rect_1",
					label = "Status Icon",
					offset = {
						-143,
						156,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							60,
							60,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/mission_board/circumstances/maelstrom_01",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_4",
							},
							material = {
								kind = "fixed",
							},
							visible = {
								field = "ability.is_ready",
								kind = "source",
								source = "player_4",
							},
						},
					},
					id = "ability_ready",
					label = "Ability READY",
					offset = {
						-158,
						144,
					},
					style = {
						color = {
							255,
							204,
							119,
							0,
						},
						size = {
							91,
							83,
						},
						transition = {
							fade_in = 0.20000000000000001,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/frames/talents/hex_frame_glow",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_4",
							},
							material = {
								kind = "fixed",
							},
						},
					},
					id = "combat_frame_inner",
					label = "Combat Frame Inner",
					offset = {
						-162,
						136,
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
							100,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/talents/hud/combat_frame_inner",
					},
				},
			},
			offset = {
				270,
				245,
			},
			opacity = {
				kind = "fixed",
				value = 1,
			},
			save_name = "compact_player_panel_4",
			screen_anchor = "bottom",
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
    shift = { -218, 0 }\
elseif count == 2 then\
    shift = { -109, 0 }\
else\
    shift = { 0, 0 }\
end\
",
				kind = "code",
			},
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "state.exists",
								kind = "source",
								source = "player_4",
							},
							op = "true",
						},
						{
							join = "and",
							lhs = {
								field = "state.bot",
								kind = "source",
								source = "player_4",
							},
							op = "false",
						},
					},
				},
				kind = "conditions",
			},
		},
	},
	kind = "folder",
	summary = "Full set of compact player panels for slots 2, 3, and 4.",
	label = "Player Panels (Full Set)",
	read_from = {
		offer = false,
	},
}