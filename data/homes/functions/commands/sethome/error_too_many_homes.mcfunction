tellraw @s[tag=donor] {"extra":[{"text":"Limit of homes for donors is "},{"score":{"name":"donor_home_limit","objective":"homes"}},"."],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true}
execute if entity @s[tag=donor] run function homes:tellraw/listhomes
tellraw @s[tag=!donor] {"extra":[{"text":"Limit of homes for non-donors is "},{"score":{"name":"non_donor_home_limit","objective":"homes"}},". Donors may have up to ",{"score":{"name":"donor_home_limit","objective":"homes"}},{"text":" homes. To donate, type "},{"text":"!donate","underlined":true,"clickEvent":{"action":"run_command","value":"!donate"}}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true}


execute if score not_found entitydb matches 1 run data remove storage entitydb: data.homes.homelist[0]
