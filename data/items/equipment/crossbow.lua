local item = ...

function item:on_created()

  self:set_savegame_variable("possession_crossbow")
end

function item:on_variant_changed(variant)
end

