return {
	folder = "Main hud",
	gamemodes = {
		meatgrinder = true,
		mission = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "Toughness Shield",
	summary = "Toughness shield icon with low health and shield break alerts.",
	library_label = "Toughness Shield",
	localizations = {},
	member_id = "tougness_shield",
	name = "tougness_shield",
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
	save_name = "tougness_shield",
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
}