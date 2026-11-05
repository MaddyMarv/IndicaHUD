return {
	blocks = {
		{
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			grid_cols = 0,
			grid_rows = 0,
			read_from = {
				offer = false,
			},
			label = "Ability Bar",
			library_label = "Ability Bar",
			localizations = {},
			member_id = "ability_bar",
			name = "ability_bar",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
color = s and s.bar_color",
								kind = "code",
							},
							current = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
current = s and s.fraction or 0",
								kind = "code",
							},
							segments = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
segments = s and s.segments or 1",
								kind = "code",
							},
							visible = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
visible = s and (s.bar_visible or s.timer_visible) or false",
								kind = "code",
							},
						},
					},
					id = "progress_bar_1",
					label = "Timer Bar",
					offset = {
						-100,
						175,
					},
					style = {
						bg_color = {
							160,
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
						segment_gap = 3,
						size = {
							200,
							15,
						},
					},
					type = "progress_bar",
					values = {
						current = 1,
						max = 1,
						segments = 1,
					},
				},
				{
					callbacks = {
						value = {
							visible = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
visible = s and (s.bar_visible or s.timer_visible) or false",
								kind = "code",
							},
						},
					},
					id = "rect_bracket",
					label = "Timer Bracket",
					offset = {
						-100,
						175,
					},
					style = {
						color = {
							255,
							169,
							191,
							153,
						},
						size = {
							200,
							15,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/hud/stamina_gauge",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
color = s and s.bubble_color",
								kind = "code",
							},
							text = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
text = s and (s.bubble_text or (s.bubble_percent and (s.bubble_percent .. \"%\")) or \"\") or \"\"",
								kind = "code",
							},
							visible = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
visible = s and s.bubble_visible or false",
								kind = "code",
							},
						},
					},
					id = "bubble_health_text",
					label = "Bubble Health Text",
					offset = {
						-106,
						149,
					},
					style = {
						align = "center",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 24,
						font_type = "machine_medium",
						shadow = true,
						size = {
							210,
							30,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "100%",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
color = s and s.text_color",
								kind = "code",
							},
							text = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
text = s and s.timer_text or \"\"",
								kind = "code",
							},
							visible = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
visible = s and s.timer_visible or false",
								kind = "code",
							},
						},
					},
					id = "timer_text_1",
					label = "Timer Text",
					offset = {
						102,
						170,
					},
					style = {
						align = "top_left",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 28,
						font_type = "machine_medium",
						shadow = true,
						size = {
							110,
							34,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "10.0",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
color = s and s.charges_color",
								kind = "code",
							},
							opacity = {
								kind = "fixed",
							},
							text = {
								body = "state.at = state.at or get_mod(\"ability_timer\")\
local s = state.at and state.at.get_ability_state()\
text = s and tostring(s.charges) or \"\"",
								kind = "code",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "ability.charges",
												kind = "source",
												source = "player_1",
											},
											op = "<",
											rhs = {
												field = "ability.max_charges",
												kind = "source",
												source = "player_1",
											},
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "charges_text_1",
					label = "Charges Text",
					offset = {
						-212,
						170,
					},
					style = {
						align = "top_right",
						color = {
							255,
							255,
							255,
							255,
						},
						font_size = 28,
						font_type = "machine_medium",
						shadow = true,
						size = {
							110,
							34,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						text = "2",
					},
				},
			},
			offset = {
				0,
				-1,
			},
			opacity = {
				kind = "thresholds",
				thresholds = {
					current = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "or",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "scanner_map",
									},
								},
							},
						},
						kind = "conditions",
						value = false,
					},
					list = {
						{
							number = 1,
							pct = 0,
						},
					},
					max = {
						kind = "fixed",
						value = 100,
					},
					payload = "number",
					scale = "boolean",
				},
				value = 1,
			},
			save_name = "ability_bar",
			scale_anchor = "origin",
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "state.hogtied",
								kind = "source",
								source = "player_1",
							},
							op = "false",
						},
						{
							join = "and",
							lhs = {
								field = "state.dead",
								kind = "source",
								source = "player_1",
							},
							op = "false",
						},
					},
				},
				kind = "conditions",
			},
		},
		{
			classes = {
				adamant = true,
				broker = true,
				cryptic = true,
				ogryn = true,
				psyker = true,
				veteran = true,
				zealot = true,
			},
			design_aspect = 1.7777777777777777,
			design_hud_scale = 1,
			design_resolution = {
				2560,
				1440,
			},
			gamemodes = {
				meatgrinder = true,
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Health & Toughness",
			library_label = "Health & Toughness",
			localizations = {},
			member_id = "hp_and_toughness",
			name = "hp_and_toughness",
			nodes = {
				{
					id = "rect_6",
					label = "Backing Color",
					offset = {
						-76,
						173,
					},
					style = {
						color = {
							128,
							11,
							28,
							12,
						},
						size = {
							207,
							26,
						},
					},
					type = "rect",
					values = {},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "state.downed",
										kind = "source",
										source = "player_spectated",
										value = false,
									},
									list = {
										{
											color = {
												255,
												194,
												0,
												0,
											},
											pct = 0,
										},
										{
											color = {
												255,
												209,
												209,
												209,
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
								source = "player_spectated",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_spectated",
							},
						},
					},
					id = "health_bar",
					label = "Health bar",
					offset = {
						-76,
						189,
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
						size = {
							207,
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
						transition = {
							fade_in = 0.20000000000000001,
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
								source = "player_spectated",
							},
							max = {
								kind = "fixed",
							},
							segments = {
								field = "status.wounds_max",
								kind = "source",
								source = "player_spectated",
							},
						},
					},
					id = "corruption_bar",
					label = "Corruption bar",
					offset = {
						-76,
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
						segment_gap = 3,
						size = {
							207,
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
						transition = {
							fade_in = 0.20000000000000001,
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
												251,
												172,
												40,
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
								source = "player_spectated",
							},
							max = {
								kind = "fixed",
							},
						},
					},
					id = "progress_bar_1",
					label = "Toughness Bar",
					offset = {
						-76,
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
							125,
							225,
							234,
						},
						size = {
							207,
							12,
						},
					},
					type = "progress_bar",
					values = {
						current = 60,
						max = 100,
					},
				},
			},
			offset = {
				-28,
				39,
			},
			opacity = {
				kind = "thresholds",
				thresholds = {
					current = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "or",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "scanner_map",
									},
								},
							},
						},
						kind = "conditions",
						value = true,
					},
					list = {
						{
							number = 0,
							pct = 0,
						},
						{
							number = 1,
							pct = 0,
						},
						{
							number = 0,
							pct = 0,
						},
					},
					max = {
						kind = "fixed",
						value = 100,
					},
					payload = "number",
					scale = "boolean",
				},
				value = 1,
			},
			save_name = "hp_and_toughness",
			transition = {
				fade_in = 0.20000000000000001,
				fade_out = 0.20000000000000001,
				linger = 1,
			},
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_spectated",
								value = "",
							},
							op = "<",
							rhs = {
								kind = "fixed",
								value = 100,
							},
						},
						{
							join = "or",
							lhs = {
								field = "status.health_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "changed",
						},
						{
							join = "or",
							lhs = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = ">",
							rhs = {
								kind = "fixed",
								value = 101,
							},
						},
						{
							join = "or",
							lhs = {
								field = "status.corruption_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "changed",
						},
						{
							join = "or",
							lhs = {
								field = "state.blocking",
								kind = "source",
								source = "player_spectated",
							},
							op = "true",
						},
						{
							join = "or",
							lhs = {
								field = "status.health_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "<",
							rhs = {
								kind = "fixed",
								value = 60,
							},
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
				meatgrinder = true,
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Combat & Ammo Info",
			library_label = "Combat & Ammo Info",
			localizations = {},
			member_id = "Main_hud_info_for_me",
			name = "Main_hud_info_for_me",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ammo_reserve_percent",
										kind = "source",
										source = "player_spectated",
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
								field = "equipment.ammo_reserve",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_is_equipped",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "equipment.ammo_mag_remaining_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "equipment.ammo_rounds_remaining_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "ranged_reserve",
					label = "Ranged Reserve",
					offset = {
						488,
						208,
					},
					style = {
						align = "center",
						font_size = 15,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							64,
							14,
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
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ammo_mag_remaining_percent",
										kind = "source",
										source = "player_spectated",
										value = false,
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
								field = "equipment.ammo_mag_remaining",
								kind = "source",
								source = "player_spectated",
							},
							text3 = {
								field = "equipment.ammo_mag_max",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_is_equipped",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "equipment.ammo_mag_remaining_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "equipment.ammo_rounds_remaining_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_uses_ammo",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "ranged_mag",
					label = "Ranged Mag",
					offset = {
						459,
						191,
					},
					style = {
						align = "center",
						font_size = 18,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							123,
							20,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode3 = "fixed",
						text = "Text",
					},
				},
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "status.peril_percent",
										kind = "source",
										source = "player_spectated",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												191,
												238,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												144,
												208,
												230,
											},
											pct = 10,
										},
										{
											color = {
												255,
												146,
												241,
												219,
											},
											pct = 15,
										},
										{
											color = {
												255,
												127,
												239,
												176,
											},
											pct = 20,
										},
										{
											color = {
												255,
												109,
												244,
												138,
											},
											pct = 25,
										},
										{
											color = {
												255,
												124,
												246,
												78,
											},
											pct = 30,
										},
										{
											color = {
												255,
												163,
												251,
												49,
											},
											pct = 45,
										},
										{
											color = {
												255,
												198,
												254,
												25,
											},
											pct = 50,
										},
										{
											color = {
												255,
												221,
												255,
												31,
											},
											pct = 55,
										},
										{
											color = {
												255,
												240,
												255,
												22,
											},
											pct = 60,
										},
										{
											color = {
												255,
												250,
												227,
												0,
											},
											pct = 65,
										},
										{
											color = {
												255,
												255,
												196,
												20,
											},
											pct = 70,
										},
										{
											color = {
												255,
												251,
												174,
												0,
											},
											pct = 75,
										},
										{
											color = {
												255,
												255,
												132,
												24,
											},
											pct = 80,
										},
										{
											color = {
												255,
												255,
												54,
												54,
											},
											pct = 85,
										},
										{
											color = {
												255,
												233,
												0,
												177,
											},
											pct = 100,
										},
									},
									max = {
										kind = "fixed",
										value = 98,
									},
									scale = "percent",
								},
							},
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "status.peril_percent",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "status.peril_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = ">=",
											rhs = {
												kind = "fixed",
												value = 1,
											},
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "peril",
					label = "peril ",
					offset = {
						384,
						145,
					},
					style = {
						align = "center",
						color = {
							255,
							211,
							221,
							210,
						},
						font_size = 25,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							97,
							28,
						},
						transition = {
							fade_in = 0.20000000000000001,
							fade_out = 0.20000000000000001,
							linger = 0.20000000000000001,
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
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "equipment.ranged_overheat_percent",
										kind = "source",
										source = "player_spectated",
										value = 0,
									},
									list = {
										{
											color = {
												255,
												191,
												238,
												255,
											},
											pct = 0,
										},
										{
											color = {
												255,
												144,
												208,
												230,
											},
											pct = 10,
										},
										{
											color = {
												255,
												233,
												0,
												177,
											},
											pct = 100,
										},
										{
											color = {
												255,
												146,
												241,
												219,
											},
											pct = 15,
										},
										{
											color = {
												255,
												127,
												239,
												176,
											},
											pct = 20,
										},
										{
											color = {
												255,
												109,
												244,
												138,
											},
											pct = 25,
										},
										{
											color = {
												255,
												124,
												246,
												78,
											},
											pct = 30,
										},
										{
											color = {
												255,
												163,
												251,
												49,
											},
											pct = 45,
										},
										{
											color = {
												255,
												198,
												254,
												25,
											},
											pct = 50,
										},
										{
											color = {
												255,
												221,
												255,
												31,
											},
											pct = 55,
										},
										{
											color = {
												255,
												240,
												255,
												22,
											},
											pct = 60,
										},
										{
											color = {
												255,
												250,
												227,
												0,
											},
											pct = 65,
										},
										{
											color = {
												255,
												255,
												196,
												20,
											},
											pct = 70,
										},
										{
											color = {
												255,
												251,
												174,
												0,
											},
											pct = 75,
										},
										{
											color = {
												255,
												255,
												132,
												24,
											},
											pct = 80,
										},
										{
											color = {
												255,
												255,
												54,
												54,
											},
											pct = 85,
										},
									},
									max = {
										kind = "fixed",
										value = 98,
									},
									scale = "percent",
								},
							},
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "equipment.ranged_overheat_percent",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "equipment.ranged_overheat_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = ">",
											rhs = {
												kind = "fixed",
												value = 0,
											},
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "heat",
					label = "heat",
					offset = {
						384,
						145,
					},
					style = {
						align = "center",
						color = {
							255,
							211,
							221,
							210,
						},
						font_size = 25,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							97,
							28,
						},
						transition = {
							fade_in = 0.20000000000000001,
							fade_out = 0.20000000000000001,
							linger = 0.20000000000000001,
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
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "pocketables.held",
										kind = "source",
										source = "player_spectated",
										value = false,
									},
									list = {
										{
											color = {
												255,
												112,
												214,
												135,
											},
											pct = 0,
										},
										{
											color = {
												255,
												175,
												211,
												171,
											},
											pct = 0,
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
								field = "pocketables.icon",
								kind = "source",
								source = "player_spectated",
							},
							material_fallback = {
								kind = "fixed",
							},
						},
					},
					id = "rect_4",
					label = "Pocketable Icon",
					offset = {
						327,
						196,
					},
					style = {
						color = {
							255,
							175,
							211,
							171,
						},
						size = {
							28,
							28,
						},
					},
					type = "rect",
					values = {
						clip_amount = 50,
						color_fallback = {
							255,
							255,
							255,
							255,
						},
						material_fallback = "content/ui/materials/effects/item_aquisition/glow_rarity_01",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								field = "stimms.held_color",
								kind = "source",
								source = "player_spectated",
							},
							material = {
								field = "stimms.icon_small",
								kind = "source",
								source = "player_spectated",
							},
							material_fallback = {
								kind = "fixed",
							},
							visible = {
								field = "stimms.held",
								kind = "source",
								source = "player_spectated",
							},
						},
					},
					id = "pocketable_icon",
					label = "Stimm Icon",
					offset = {
						309,
						199,
					},
					style = {
						color = {
							118,
							169,
							169,
							169,
						},
						size = {
							21,
							21,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
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
										source = "player_spectated",
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
							font_size = {
								kind = "fixed",
							},
							text = {
								field = "blitz.count",
								kind = "source",
								source = "player_spectated",
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
												field = "blitz.is_equipped",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "and",
											lhs = {
												field = "blitz.uses_charges",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "blitz.count_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "blitz.uses_charges",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "nades",
					label = "nades",
					offset = {
						559,
						204,
					},
					style = {
						align = "top_left",
						color = {
							255,
							214,
							231,
							207,
						},
						decimals = 0,
						font_size = 15,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							31,
							14,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						value_mode = "chain",
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
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "blitz.is_equipped",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "and",
											lhs = {
												field = "blitz.uses_charges",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
										{
											join = "or",
											lhs = {
												field = "blitz.count_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 25,
											},
										},
										{
											join = "and",
											lhs = {
												field = "blitz.uses_charges",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "blitz_icon",
					label = "Blitz Icon",
					offset = {
						530,
						192,
					},
					style = {
						color = {
							255,
							255,
							255,
							255,
						},
						size = {
							31,
							30,
						},
					},
					type = "rect",
					values = {
						clip_amount = 100,
						clip_mode = "clip_center",
						material = "content/ui/materials/hud/icons/party_throwable",
						rotation = 0,
					},
				},
				{
					callbacks = {
						value = {
							color = {
								body = "local red = {255, 255, 000, 000}\
local white = {255 , 122, 226, 221}\
if sources.player_spectated.equipment.progress_percent_to_reload_finish >= 100 then\
    color = red\
else\
    color = white\
end",
								kind = "code",
							},
							current = {
								field = "equipment.progress_percent_to_reload_animation_finish",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								field = "equipment.is_reloading",
								kind = "source",
								source = "player_spectated",
							},
						},
					},
					id = "progress_bar_1",
					label = "reload",
					offset = {
						506,
						181,
					},
					style = {
						color = {
							255,
							120,
							220,
							255,
						},
						size = {
							32,
							7,
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
							text = {
								field = "equipment.reload_time_remaining_seconds",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								field = "equipment.is_reloading",
								kind = "source",
								source = "player_spectated",
							},
						},
					},
					id = "text_1",
					label = "reload timer text",
					offset = {
						522,
						164,
					},
					style = {
						align = "center",
						decimals = 2,
						font_size = 15,
						shadow = true,
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
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "status.dodges",
										kind = "source",
										source = "player_spectated",
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
											pct = -1,
										},
										{
											color = {
												255,
												227,
												144,
												5,
											},
											pct = 0,
										},
										{
											color = {
												255,
												80,
												145,
												255,
											},
											pct = 1,
										},
									},
									max = {
										field = "status.dodges_max",
										kind = "source",
										source = "player_spectated",
										value = 100,
									},
									payload = "color",
									scale = "number",
								},
							},
							text = {
								field = "status.dodges",
								kind = "source",
								source = "player_spectated",
							},
							text3 = {
								field = "status.dodges_max",
								kind = "source",
								source = "player_spectated",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "status.dodges",
												kind = "source",
												source = "player_spectated",
											},
											op = "changed",
										},
										{
											join = "and",
											lhs = {
												field = "status.dodges",
												kind = "source",
												source = "player_spectated",
											},
											negate = true,
											op = "==",
											rhs = {
												field = "status.dodges_max",
												kind = "source",
												source = "player_spectated",
											},
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "dodge",
					label = "dodge",
					offset = {
						391,
						114,
					},
					style = {
						align = "center_right",
						font_size = 24,
						font_type = "mono_tide_bold",
						shadow = true,
						size = {
							60,
							32,
						},
						transition = {
							fade_out = 0.20000000000000001,
							linger = 1,
						},
					},
					type = "text",
					values = {
						mode = "fixed",
						mode3 = "fixed",
						text = "Text",
						text2 = "|",
						value_mode = "chain",
					},
				},
			},
			offset = {
				-430,
				-54,
			},
			opacity = {
				kind = "thresholds",
				thresholds = {
					current = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "or",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "scanner_map",
									},
								},
							},
						},
						kind = "conditions",
						value = false,
					},
					list = {
						{
							number = 0,
							pct = 0,
						},
					},
					max = {
						kind = "fixed",
						value = 100,
					},
					payload = "number",
					scale = "boolean",
				},
				value = 1,
			},
			save_name = "main_hud_info_for_me",
			version = 4,
			visible = {
				conditions = {
					rows = {},
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
				meatgrinder = true,
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Coherency Aura",
			library_label = "Coherency Aura",
			localizations = {},
			member_id = "coherency",
			name = "coherency",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								field = "identity.slot_color",
								kind = "source",
								source = "player_2",
							},
							offset = {
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
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.in_your_coherency",
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
					id = "text_slot_2",
					label = "slot 2",
					offset = {
						-63,
						82,
					},
					style = {
						align = "center",
						font_size = 31,
						shadow = true,
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Text",
						value_mode = "chain",
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
							offset = {
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
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.in_your_coherency",
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
					id = "text_slot_3",
					label = "slot 3",
					offset = {
						-30,
						82,
					},
					style = {
						align = "center",
						font_size = 31,
						shadow = true,
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Text",
						value_mode = "chain",
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
							offset = {
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
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "state.in_your_coherency",
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
					id = "text_slot_4",
					label = "slot 4",
					offset = {
						3,
						82,
					},
					style = {
						align = "center",
						font_size = 31,
						shadow = true,
					},
					type = "text",
					values = {
						mode = "fixed",
						mode2 = "fixed",
						text = "Text",
					},
				},
			},
			offset = {
				30,
				262,
			},
			opacity = {
				kind = "thresholds",
				thresholds = {
					current = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "or",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "scanner_map",
									},
								},
							},
						},
						kind = "conditions",
						value = false,
					},
					list = {
						{
							number = 0,
							pct = 0,
						},
					},
					max = {
						kind = "fixed",
						value = 100,
					},
					payload = "number",
					scale = "boolean",
				},
				value = 1,
			},
			save_name = "coherency",
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "state.hogtied",
								kind = "source",
								source = "player_1",
							},
							op = "false",
						},
						{
							join = "and",
							lhs = {
								field = "state.dead",
								kind = "source",
								source = "player_1",
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
				meatgrinder = true,
				mission = true,
			},
			grid_cols = 0,
			grid_rows = 0,
			label = "Toughness Shield",
			library_label = "Toughness Shield",
			localizations = {},
			member_id = "toughness_shield",
			name = "toughness_shield",
			nodes = {
				{
					callbacks = {
						value = {
							color = {
								kind = "thresholds",
								thresholds = {
									current = {
										field = "status.toughness_percent",
										kind = "source",
										source = "player_spectated",
										value = false,
									},
									list = {
										{
											color = {
												255,
												120,
												220,
												255,
											},
											pct = 100,
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
									max = {
										kind = "fixed",
										value = 100,
									},
									payload = "color",
									scale = "percent",
								},
							},
							material = {
								kind = "fixed",
							},
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "status.toughness_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "==",
											rhs = {
												kind = "fixed",
												value = 100,
											},
										},
										{
											join = "or",
											lhs = {
												field = "status.toughness_gold",
												kind = "source",
												source = "player_spectated",
											},
											op = "true",
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "sheild_for_toughness",
					label = "sheild for toughness",
					offset = {
						99,
						208,
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
							35,
						},
					},
					type = "rect",
					values = {
						material = "content/ui/materials/icons/presets/preset_04",
					},
				},
				{
					callbacks = {
						value = {
							visible = {
								conditions = {
									rows = {
										{
											join = "and",
											lhs = {
												field = "status.toughness_percent",
												kind = "source",
												source = "player_spectated",
											},
											op = "<",
											rhs = {
												kind = "fixed",
												value = 99,
											},
										},
									},
								},
								kind = "conditions",
							},
						},
					},
					id = "rect_1",
					offset = {
						101,
						208,
					},
					style = {
						color = {
							255,
							250,
							2,
							2,
						},
						size = {
							35,
							30,
						},
					},
					type = "rect",
					values = {
						clip_amount = 100,
						clip_mode = "clip_center",
						material = "content/ui/materials/hud/icons/health",
					},
				},
			},
			offset = {
				3,
				-1,
			},
			opacity = {
				kind = "thresholds",
				thresholds = {
					current = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "or",
									lhs = {
										field = "device.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "auspex_scanner",
									},
								},
								{
									join = "and",
									lhs = {
										field = "device.id",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "scanner_map",
									},
								},
							},
						},
						kind = "conditions",
						value = false,
					},
					list = {
						{
							number = 0,
							pct = 0,
						},
					},
					max = {
						kind = "fixed",
						value = 100,
					},
					payload = "number",
					scale = "boolean",
				},
				value = 1,
			},
			save_name = "toughness_shield",
			scale_anchor = "origin",
			version = 4,
			visible = {
				conditions = {
					rows = {
						{
							join = "and",
							lhs = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_spectated",
								value = "",
							},
							op = "<",
							rhs = {
								kind = "fixed",
								value = 100,
							},
						},
						{
							join = "or",
							lhs = {
								field = "status.health_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "changed",
						},
						{
							join = "or",
							lhs = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = ">",
							rhs = {
								kind = "fixed",
								value = 101,
							},
						},
						{
							join = "or",
							lhs = {
								field = "status.corruption_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "changed",
						},
						{
							join = "or",
							lhs = {
								field = "state.blocking",
								kind = "source",
								source = "player_spectated",
							},
							op = "true",
						},
						{
							join = "or",
							lhs = {
								field = "status.health_percent",
								kind = "source",
								source = "player_spectated",
							},
							op = "<",
							rhs = {
								kind = "fixed",
								value = 60,
							},
						},
					},
				},
				kind = "conditions",
			},
		},
	},
	kind = "folder",
	summary = "Full main HUD with health, toughness, ability bar, and combat info.",
	label = "Main HUD (Full Set)",
	read_from = {
		offer = false,
	},
}