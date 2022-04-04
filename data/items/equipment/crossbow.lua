local item = ...

function item:on_created()

  self:set_savegame_variable("possession_crossbow")
end

function item:on_variant_changed(variant)
  -- The possession state of the flippers determines the built-in ability "swim".
  self:get_game():set_ability("sword", variant)
end

