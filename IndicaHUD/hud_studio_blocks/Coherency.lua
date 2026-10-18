return {
	gamemodes = {
		meatgrinder = true,
		mission = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "Coherency Aura",
	summary = "Shows who is in your coherency aura.",
	library_label = "Coherency Aura",
	read_from = {
		offer = false,
	},
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
}