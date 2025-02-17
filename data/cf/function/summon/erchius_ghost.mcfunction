summon minecraft:allay ~ ~ ~ \
{\
    Invulnerable: 1b,\
    active_effects: [\
        {\
            duration: -1,\
            show_icon: 0b,\
            amplifier: 1b,\
            id: "minecraft:invisibility",\
            show_particles: 0b\
        }\
    ],\
    Silent: 1b,\
    equipment: {\
        mainhand: {\
            components: {\
                "minecraft:item_model": "cf:entity/erchius_ghost",\
                "minecraft:enchantments": {\
                    "cf:entity/erchius_ghost/main": 1\
                },\
                "minecraft:enchantment_glint_override": 0b\
            },\
            count: 1,\
            id: "minecraft:quartz"\
        }\
    },\
    LeftHanded: 0b,\
    CanPickUpLoot: 1b,\
    attributes: [\
        {\
            id: "minecraft:movement_speed",\
            modifiers: [\
                {\
                    amount: 0.0,\
                    id: "cf:anger",\
                    operation: "add_value"\
                }\
            ],\
            base: 0.06\
        },\
        {\
            id: "minecraft:scale",\
            base: 1.0\
        },\
        {\
            id: "minecraft:flying_speed",\
            modifiers: [\
                {\
                    amount: 0.0,\
                    id: "cf:anger",\
                    operation: "add_value"\
                }\
            ],\
            base: 0.06\
        }\
    ],\
    Inventory: [],\
    Tags: [\
        "type.erchius_ghost",\
        "action.despawn_cooldown"\
    ],\
    Passengers: [\
        {\
            CanJoinRaid: 0b,\
            PatrolLeader: 0b,\
            Invulnerable: 1b,\
            active_effects: [\
                {\
                    duration: -1,\
                    show_icon: 0b,\
                    amplifier: 1b,\
                    id: "minecraft:invisibility",\
                    show_particles: 0b\
                }\
            ],\
            id: "minecraft:zombified_piglin",\
            Silent: 1b,\
            CustomName: "Erchius Ghost",\
            attributes: [\
                {\
                    id: "minecraft:follow_range",\
                    base: 0.0\
                },\
                {\
                    id: "minecraft:attack_damage",\
                    base: 1000.0\
                }\
            ]\
        }\
    ]\
}

data modify storage cf:temp erchius_ghost.target_uuid set from entity @s UUID
function cf:library/uuid/generate_uuid {output:"cf:temp erchius_ghost.entity"}
execute as @n[type=allay,tag=type.erchius_ghost] run function cf:entity/erchius_ghost/on_summon with storage cf:temp erchius_ghost
data remove storage cf:temp erchius_ghost
