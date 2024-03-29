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
--statue de sauvegarde
function save:on_interaction()
  game:start_dialog("save_quit", function(answer)
          if answer == 1 then
            -- Continue.
            sol.audio.play_sound("danger")
          elseif answer == 2 then
            -- Save and quit.
            sol.audio.play_sound("danger")
            game:save()
            sol.main.reset()
          elseif answer == 3 then
            -- Quit without saving.
            sol.audio.play_sound("danger")
            sol.main.reset()
            elseif answer == 4 then
              -- Save and continue.
              sol.audio.play_sound("danger")
              game:save()
          end
        end)
end
function save_2:on_interaction()
  game:start_dialog("save_quit", function(answer)
          if answer == 1 then
            -- Continue.
            sol.audio.play_sound("danger")
          elseif answer == 2 then
            -- Save and quit.
            sol.audio.play_sound("danger")
            game:save()
            sol.main.reset()
          elseif answer == 3 then
            -- Quit without saving.
            sol.audio.play_sound("danger")
            sol.main.reset()
            elseif answer == 4 then
              -- Save and continue.
              sol.audio.play_sound("danger")
              game:save()
          end
        end)
end
function save_3:on_interaction()
  game:start_dialog("save_quit", function(answer)
          if answer == 1 then
            -- Continue.
            sol.audio.play_sound("danger")
          elseif answer == 2 then
            -- Save and quit.
            sol.audio.play_sound("danger")
            game:save()
            sol.main.reset()
          elseif answer == 3 then
            -- Quit without saving.
            sol.audio.play_sound("danger")
            sol.main.reset()
            elseif answer == 4 then
              -- Save and continue.
              sol.audio.play_sound("danger")
              game:save()
          end
        end)
end
function save_4:on_interaction()
  game:start_dialog("save_quit", function(answer)
          if answer == 1 then
            -- Continue.
            sol.audio.play_sound("danger")
          elseif answer == 2 then
            -- Save and quit.
            sol.audio.play_sound("danger")
            game:save()
            sol.main.reset()
          elseif answer == 3 then
            -- Quit without saving.
            sol.audio.play_sound("danger")
            sol.main.reset()
            elseif answer == 4 then
              -- Save and continue.
              sol.audio.play_sound("danger")
              game:save()
          end
        end)
end
--etape 1 story
if game:get_value("story")==0 then
  function mamie_2:on_interaction()
    --pnj mamie
    game:start_dialog("tricytown.mamie.story1")
  end
  function story1:on_activated()
    --capteur story1
    game:start_dialog("story.main.1")
    game:set_value("story","1")
  end
end
--fin etape 1 story