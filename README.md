# EntityDirectFunction

**Minecraft Java Edition 1.21.5** 向けのデータパックライブラリです。  
エンティティの UUID とコマンドラインをマップに登録することで、セレクタを介さずに特定のエンティティを実行者として任意のコマンドを実行できます。

## 📌 概要

`EntityDirectFunction` は、特定のエンティティの UUID を登録することで、セレクタを介さずに特定のエンティティを実行者としてコマンドを実行できるようにするライブラリです。

---

## 🚀 特徴

- 任意のコマンドラインをエンティティに関連付けて記録
- `tick` マップ名を使用することで、毎 tick 自動実行が可能
- `scoreboard` の特性を活用し、対象エンティティが死亡した場合はマップ実行時に自動的に削除される

---

## 🛠️ 使用方法

### 登録（Register）

特定のエンティティとコマンドを紐づけて登録します。

```mcfunction
function entity_direct_function:api/register {function:<command>, map:<string>}
```

- `function`: 実行したいコマンド全文
- `map`: 登録先のマップ名（後述の呼び出しに使用）

例:

```mcfunction
function entity_direct_function:api/register {function:"function my_pack:do_something", map:"my_entity"}
```

---

### 呼び出し（Call）

登録済みのfunction mapを実行します。

```mcfunction
function entity_direct_function:api/call {map:<string>}
```

例:

```mcfunction
function entity_direct_function:api/call {map:my_entity}
```

---

### 自動実行（毎 tick）

マップ名に `tick` を指定することで、毎 tick 自動的に呼び出されます。

```mcfunction
function entity_direct_function:api/register {function:<command>, map:"tick"}
```

---


## ✅ 対応バージョン

- Minecraft Java Edition 1.21.5

---

## 📄 ライセンス


