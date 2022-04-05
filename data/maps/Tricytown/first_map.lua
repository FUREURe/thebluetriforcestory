-- Lua script of map first_map.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()
  game:start_dialog('story.main.1')
  -- You can initialize the movement and sprites of various
  -- map entities here.
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()
local movement = sol.movement.create("random_path")
movement:start(Cocotinette)
Cocotinette:set_traversable()

end

function Cocotinette:on_interaction()
  game:save()
  game:start_dialog("tricytown.linkle.cocotinette1")
end
