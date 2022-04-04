-- Lua script of item inventory/crossbow.
-- This script is executed only once for the whole game.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local item = ...
local game = item:get_game()

function item:on_created()
  item:set_savegame_variable("possession_crossbow")
  item:set_assignable(true)
end

local sound_timer

function item:on_obtaining(variant, savegame_variable)
  -- Obtaining the Bow automatically gives a quiver
  local quiver = game:get_item("equipment/bow_quiver")
  if not quiver:has_variant() then
    quiver:set_variant(1)
    -- We fills the quiver because on_obtaining is not called
    quiver:set_amount(quiver:get_max_amount())
  end
end
-- Event called when all items have been created.
function item:on_started()

  -- Initialize the properties of your item here,
  -- like whether it can be saved, whether it has an amount
  -- and whether it can be assigned.
end

-- Event called when the hero starts using this item.
function item:on_using()
  local quiver = game:get_item("equipment/bow_quiver")
  if quiver:get_amount() == 0 then
    if sound_timer == nil then
      sol.audio.play_sound("wrong")
      sound_timer = sol.timer.start(game, 500, function()
      sound_timer = nil
      end)
    end
  else
    local map = game:get_map()
    local hero = game:get_hero()
    quiver:remove_amount(1)
    hero:start_bow()
  end
  item:set_finished()
end
-- Event called when a pickable treasure representing this item
-- is created on the map.
function item:on_pickable_created(pickable)

  -- You can set a particular movement here if you don't like the default one.
end
