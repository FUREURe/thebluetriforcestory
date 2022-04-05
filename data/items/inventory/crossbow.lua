local item = ...
local game = item:get_game()


function item:on_created()
  item:set_savegame_variable("possession_crossbow")
  item:set_assignable(true)
end

function item:on_obtaining(variant, savegame_variable)
  -- Obtaining the Bow automatically gives a quiver
end

-- Called when the player uses the bombs of his inventory
function item:on_using()
    local map = item:get_map()
local hero = map:get_hero()
local sprite
local movement
local sound_timer
local direction = hero:get_direction()
    local x, y, layer = hero:get_center_position()
    local arrow = map:create_custom_entity({
      model = "arrow",
      x = x,
      y = y + 3,
      layer = layer,
      width = 8,
      height = 8,
      direction = direction,
    })
local arrow_movement = sol.movement.create("straight")
arrow_movement:set_speed(96)
arrow_movement:start(arrow)

  item:set_finished()
end