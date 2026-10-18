return {
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
	folder = "Main hud",
	gamemodes = {
		meatgrinder = true,
		mission = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "Health & Toughness",
	summary = "Health, toughness, and corruption bars.",
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
}