data:extend({
  {
    type = "fluid",
    name = "oxygen",
	base_color = {b=135, g=206, r=235},
	flow_color = {
        b = 0.5,
        g = 0.5,
        r = 0.5
      },
	default_temperature = 70,
    icon = "__rocket-fuel-from-water__/graphics/icons/oxygen.png", 
    icon_size = 64,
  },
  
  {
    type = "fluid",
    name = "hydrogen",
	base_color = {b=106, g=13, r=173},
	flow_color = {
        b = 0.5,
        g = 0.5,
        r = 0.5
      },
	default_temperature = 70,
    icon = "__rocket-fuel-from-water__/graphics/icons/hydrogen.png", 
    icon_size = 64,
  },
})


data:extend({
  {
    type = "recipe",
    name = "hydrolysis",
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64
      },
      {
        icon = "__rocket-fuel-from-water__/graphics/icons/oxygen.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
	  {
        icon = "__rocket-fuel-from-water__/graphics/icons/hydrogen.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "chemistry",
    --subgroup = "biomass-crafting",  
    ingredients = {
      {type = "fluid",  name = "water", amount = 100},
    },
    results = { 
	  {type = "fluid",  name = "hydrogen", amount = 11},
	  {type = "fluid",  name = "oxygen", amount = 88},
    },
    energy_required = 1
  }
})


data:extend({
  {
    type = "recipe",
    name = "water-rocket-fuel",
    icons = {
      {
        icon = "__base__/graphics/icons/rocket-fuel.png",
        icon_size = 64
      },
      {
        icon = "__rocket-fuel-from-water__/graphics/icons/oxygen.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
	  {
        icon = "__rocket-fuel-from-water__/graphics/icons/hydrogen.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "chemistry",
    --subgroup = "biomass-crafting",  
    ingredients = {
      {type = "fluid",  name = "hydrogen", amount = 100},
	  {type = "fluid",  name = "oxygen", amount = 600},
	  {type = "item",  name = "steel-plate", amount = 10},
    },
    results = { 
	  {type = "item",  name = "rocket-fuel", amount = 10},
    },
    energy_required = 10
  }
})

require("prototypes.technologies")