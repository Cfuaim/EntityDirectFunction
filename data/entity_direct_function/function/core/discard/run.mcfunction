# エンティティから実行されているか
execute unless entity @s run return fail

# UUIDの取得
tag @s add entity_direct_function.discard
execute at @s summon minecraft:text_display run function entity_direct_function:core/discard/resolve
tag @s remove entity_direct_function.discard

# 破棄を実行
function entity_direct_function:core/discard/target with storage entity_direct_function:discard target
