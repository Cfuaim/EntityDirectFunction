# 生存フラグ確認
$execute unless score $(entity) entity_direct_function.alive matches 0 run return run data remove storage entity_direct_function:call root.act
# 実行
$execute as $(entity) run $(function)
