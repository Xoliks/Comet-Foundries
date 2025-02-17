execute store result storage cf:temp erchius_ghost.spawn_pos.x int 1 run random value -5..5
execute store result storage cf:temp erchius_ghost.spawn_pos.y int 1 run random value -5..5
execute store result storage cf:temp erchius_ghost.spawn_pos.z int 1 run random value -20..-10

return run function cf:player/mined_erchius_fuel/spawn_at_pos with storage cf:temp erchius_ghost.spawn_pos