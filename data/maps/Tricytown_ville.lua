-- Lua script of map Tricytown.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()
   local movement = sol.movement.create("random_path")
  movement:start(mamie_2)
  movement:start(midona)
  -- You can initialize the movement and sprites of various
  -- map entities here.
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end

function save:on_interaction()
  game:save()
end

--etape 1 story
if game:get_value("story")==0 then
  function mamie_2:on_interaction()
    game:start_dialog("tricytown.mamie.story1")
  end
  function story1:on_activated()
    game:start_dialog("story.main.1")
    game:set_value("story","1")
  end
end
--fin etape 1 story