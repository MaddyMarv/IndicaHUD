return {
	grid_cols = 0,
	grid_rows = 0,
	label = "Ability Bar",
	summary = "Ability cooldown bar with segment support.",
	library_label = "Ability Bar",
	read_from = {
		offer = false,
	},
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
		-3,
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
	requires = {
		"ability_timer",
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
}