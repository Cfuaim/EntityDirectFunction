#> entity_direct_function:api/register
# @api
#
# エンティティとfunctionをキューに追加

# インプットのコピー
$data merge storage entity_direct_function:register {entry:{map:"$(map)",instance:{function:"$(function)"}}}
# 実行
function entity_direct_function:core/register/run
data remove storage entity_direct_function:register entry
