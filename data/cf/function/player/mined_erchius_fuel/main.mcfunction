scoreboard players reset @s mined_erchius_ore
execute unless dimension cf:moon run return fail
execute if entity @n[type=allay,distance=..32] run return fail

#attempt to spawn an erchius ghost near the player up to 20 times
execute unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  unless function cf:player/mined_erchius_fuel/spawn_ghost \
  run return fail