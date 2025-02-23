execute align xyz run summon item_display ~ ~ ~ \
{ \
  view_range: 0.3f, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    translation: [0.0f, 4.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [8.0f, 8.0f, 8.0f] \
  }, \
  brightness :{ \
    block: 15, \
    sky: 15 \
  }, \
  item: { \
    id:"minecraft:white_dye", \
    count: 1b, \
    components: { \
      "minecraft:item_model": "cf:hologram/spaceship", \
      "minecraft:custom_data": { \
        tick: { \
          command: "function cf:entity/hologram_projector/tick" \
        } \
      } \
    } \
  } \
}

setblock ~ ~ ~ minecraft:player_head[powered=false,rotation=0]{profile:{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTczOTkzOTYzOTY0MSwKICAicHJvZmlsZUlkIiA6ICJlYTE1YTJhMTNhMDg0NTZmYTBmMDJhOTIwOTIxOTdiZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJYb2xpa3MiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJiYTk0MzE3ODFlZjRjMTkzZGQwZTExNjU2N2IwYjg1NTE4YWI5YjZhM2RjOGRhZDJiNmJiZjNiYjliZjg5MyIKICAgIH0KICB9Cn0="}]}}