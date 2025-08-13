local cargo_capacity_bonus = {
  type = "technology",
  name = "cargo-wagon-capacity",
  icon = "__base__/graphics/technology/railway.png",
  icon_size = 256, icon_mipmaps = 4,
  effects = {
    {
      type = "nothing",
      effect_description = {"technology-effect.cargo-wagon-capacity"}
    }
  },
  unit = {
    count_formula = "1000 * 2^(L-1)",
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
	  {"production-science-pack", 1},
	  {"utility-science-pack", 1},
	  {"space-science-pack", 1},
    },
    time = 60
  },
  prerequisites = {"utility-science-pack", "braking-force-7", "production-science-pack", "space-science-pack"},
  max_level = "infinite",
  upgrade = true,
  order = "e-p-b-c"
}

data:extend({cargo_capacity_bonus})