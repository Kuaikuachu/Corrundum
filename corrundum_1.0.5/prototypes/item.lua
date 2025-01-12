local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
--local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local simulations_corrundum = require("__corrundum__.prototypes.factoriopedia-simulations")


data:extend(
{
    {
        type = "tool",
        name = "electrochemical-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__corrundum__/graphics/icons/electrochemical-science-pack.png",
        subgroup = "science-pack",
        color_hint = { text = "Y" },
        order = "l",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        default_import_location = "corrundum",
        weight = 1*kg,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        random_tint_color = item_tints.bluish_science
    },
    {
        type = "item",
        name = "platinum-ore",
        icon = "__corrundum__/graphics/icons/platinum-ore.png",
        order = "z[platinum]",
        subgroup = "raw-resource",
        color_hint = { text = "T" },

        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "corrundum",
        weight = 10*kg
    },
    {
        type = "item",
        name = "chalcopyrite-ore",
        icon = "__corrundum__/graphics/icons/chalcopyrite-ore.png",
        order = "z[chalcopyrite]",
        pictures =
        {
          { size = 64, filename = "__corrundum__/graphics/icons/chalcopyrite-ore.png",   scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__corrundum__/graphics/icons/chalcopyrite-ore-1.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__corrundum__/graphics/icons/chalcopyrite-ore-2.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__corrundum__/graphics/icons/chalcopyrite-ore-3.png", scale = 0.5, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        color_hint = { text = "T" },

        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "corrundum",
        weight = 10*kg
    },
    {
      type = "item",
      name = "sulfur-ore",
      order = "z[sulfur]",
      icon = "__corrundum__/graphics/icons/sulfur-ore-1.png",
      pictures =
      {
        --{ size = 64, filename = "__corrundum__/graphics/icons/sulfur-ore.png",   scale = 0.5, mipmap_count = 4 }, --lost this picture. oops
        { size = 64, filename = "__corrundum__/graphics/icons/sulfur-ore-1.png", scale = 0.5, mipmap_count = 4 },
        { size = 64, filename = "__corrundum__/graphics/icons/sulfur-ore-2.png", scale = 0.5, mipmap_count = 4 },
        { size = 64, filename = "__corrundum__/graphics/icons/sulfur-ore-3.png", scale = 0.5, mipmap_count = 4 }
      },
      subgroup = "raw-resource",
      inventory_move_sound = item_sounds.resource_inventory_move,
      pick_sound = item_sounds.resource_inventory_pickup,
      drop_sound = item_sounds.resource_inventory_move,
      stack_size = 50,
      default_import_location = "corrundum",
      weight = 2*kg
    },
    {
      type = "item",
      name = "platinum-plate",
      icon = "__corrundum__/graphics/icons/platinum-plate.png",
      order = "z[platinumplate]",
      subgroup = "raw-material",
      color_hint = { text = "T" },

      inventory_move_sound = item_sounds.resource_inventory_move,
      pick_sound = item_sounds.resource_inventory_pickup,
      drop_sound = item_sounds.resource_inventory_move,
      stack_size = 50,
      default_import_location = "corrundum",
      weight = 4*kg
    },
    {
      type = "item",
      name = "calcium-sulfate",
      icon = "__corrundum__/graphics/icons/calcium-sulfate.png",

      subgroup = "raw-material",
      color_hint = { text = "T" },
      order = "z[calciumsulfate]",
      inventory_move_sound = item_sounds.resource_inventory_move,
      pick_sound = item_sounds.resource_inventory_pickup,
      drop_sound = item_sounds.resource_inventory_move,
      stack_size = 50,
      default_import_location = "corrundum",
      weight = 1*kg
    },
    {
      type = "item",
      name = "asphalt",
      icon = "__corrundum__/graphics/icons/asphalt.png",

      subgroup = "raw-material",
      color_hint = { text = "T" },
      order = "z[asphalt]",
      inventory_move_sound = item_sounds.brick_inventory_move,
      pick_sound = item_sounds.brick_inventory_pickup,
      drop_sound = item_sounds.brick_inventory_move,
      stack_size = 100,
      default_import_location = "corrundum",
      weight = 2.5*kg
    },
    {
      type = "item",
      name = "catalytic-chemical-plant",
      icon = "__corrundum__/graphics/icons/catalytic-chemical-plant.png",
      subgroup = "production-machine",
      order = "f[chemical-plant]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      place_result = "catalytic-chemical-plant",
      stack_size = 10,
      default_import_location = "corrundum",
      weight = 110 * kg
    },
    {
      type = "item",
      name = "pressure-lab",
      icon = "__corrundum__/graphics/icons/pressure-lab.png",
      subgroup = "production-machine",
      order = "z[lab]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      place_result = "pressure-lab",
      stack_size = 10,
      default_import_location = "corrundum",
      weight = 200 * kg
    },
    {
      type = "item",
      name = "red-boiler",
      icon = "__corrundum__/graphics/icons/red-boiler.png",
      subgroup = "energy",
      order = "b[steam-power]-a[redboiler]",
      inventory_move_sound = item_sounds.steam_inventory_move,
      pick_sound = item_sounds.steam_inventory_pickup,
      drop_sound = item_sounds.steam_inventory_move,
      place_result = "red-boiler",
      stack_size = 50,
      random_tint_color = item_tints.iron_rust,
      --ingredient_to_weight_coefficient = 1,
    },
    {
      type = "item",
      name = "red-steam-engine",
      icon = "__corrundum__/graphics/icons/red-steam-engine.png",
      subgroup = "energy",
      order = "b[steam-power]-b[thermoengine]",
      inventory_move_sound = item_sounds.steam_inventory_move,
      pick_sound = item_sounds.steam_inventory_pickup,
      drop_sound = item_sounds.steam_inventory_move,
      place_result = "red-steam-engine",
      stack_size = 10,
      random_tint_color = item_tints.iron_rust,
      --ingredient_to_weight_coefficient = 1,
    },
    {
      type = "item",
      name = "ice-box",
      icon = "__corrundum__/graphics/icons/ice-box.png",
      subgroup = "storage",
      order = "a[items]-b[ice-box]",
      inventory_move_sound = item_sounds.wood_inventory_move,
      pick_sound = item_sounds.wood_inventory_pickup,
      drop_sound = item_sounds.wood_inventory_move,
      place_result = "ice-box",
      stack_size = 50
    },
    {
      type = "item",
      name = "dry-ice",
      icon = "__corrundum__/graphics/icons/dry-ice.png",
      subgroup = "raw-resource",
      order = "k[ice]",
      inventory_move_sound = space_age_item_sounds.ice_inventory_move,
      pick_sound = space_age_item_sounds.ice_inventory_pickup,
      drop_sound = space_age_item_sounds.ice_inventory_move,
      stack_size = 500,
      weight = 0.1 * kg,
      random_tint_color = item_tints.ice_blue,
      spoil_ticks = 60 * 4 * minute, --4 hours of spoil time
    },

    {
      type = "item",
      name = "platinum-thruster",
      icon = "__corrundum__/graphics/icons/platinum-thruster-icon.png",
      subgroup = "space-platform",
      order = "p[thruster]",
      inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
      pick_sound = space_age_item_sounds.rocket_inventory_pickup,
      drop_sound = space_age_item_sounds.rocket_inventory_move,
      place_result = "platinum-thruster",
      stack_size = 10,
      weight = 200*kg
    },

}

)