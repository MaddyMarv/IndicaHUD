return {
	design_aspect = 1.7777777777777777,
	design_hud_scale = 1,
	design_resolution = {
		2560,
		1440,
	},
	folder = "Main hud",
	gamemodes = {
		meatgrinder = true,
		mission = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "Combat & Ammo Info",
	summary = "Ammo, peril, heat, blitz, and pocketables.",
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
}