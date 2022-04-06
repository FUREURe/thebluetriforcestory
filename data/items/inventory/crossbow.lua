local item = ...
local game = item:get_game()
local shoot

function item:on_created()
  item:set_savegame_variable("possession_crossbow")
  item:set_assignable(true)
   shoot = true
end

function item:on_obtaining(variant, savegame_variable)
  -- Obtaining the Bow automatically gives a quiver
end

-- Called when the player uses the bombs of his inventory
function item:on_using()
    local map = item:get_map()
    local hero = map:get_hero()
    local di = hero:get_direction()
    local x, y, layer = hero:get_center_position()
    if shoot == true then
      local arrow = map:create_custom_entity({
        model = "tile",
        x = x,
        y = y + 3,
        layer = layer,
        width = 8,
        height = 8,
        direction = hero:get_direction(),
      })
    hero:set_animation("bow",function()
     end)
   local arrow_movement = sol.movement.create("straight")
   arrow_movement:set_speed(400)
   arrow_movement:set_angle(di * math.pi / 2)
   arrow:set_direction(di)
   arrow_movement:start(arrow)
    shoot = false
    sol.timer.start(500,function() 
      sound_timer = nil 
      shoot = true
      end)
    end
  item:set_finished()
end