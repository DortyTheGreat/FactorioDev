data:extend({
  {
    type = "technology",
    name = "alternative-fuel-tech",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64,
    prerequisites = { "space-science-pack" },
    unit = {
      count = 1000,
      ingredients = { { "utility-science-pack", 1 }, { "space-science-pack", 1 }, { "military-science-pack", 1 } },
      time = 30
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "hydrolysis"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "water-rocket-fuel"
      },
	  
    },
    order = "a-b-a"
  }
})
