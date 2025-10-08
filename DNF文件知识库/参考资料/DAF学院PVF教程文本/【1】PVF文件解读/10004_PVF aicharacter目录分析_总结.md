# 10004_PVF aicharacter目录分析 - 内容总结

## 主要内容
本文分析了PVF文件中aicharacter目录的结构和功能，该目录主要用于存储游戏中APC（人工智能角色）相关数据。

## 主要文件说明
- **aicharacter.kor.str**: 包含游戏中APC相关的文本语言，可随意修改
- **aicharacter.lst**: 列表文件，列出该目录中所有aic链接
- **operatingvalue.lst**: 列出各种操作值的代码，如'jump attack' 7
- **towerofdespair_apc.etc**: 包含绝望之塔或死亡之塔相关APC数据

## APC数据结构
- 每个以APC名称命名的子文件夹对应一个APC
- 例如fighter/28对应28号APC的数据
- .aic文件包含人偶等级、状态/速度、攻击速度、自定义技能等级、远距离攻击反应几率等参数
- 文件中还包含技能代码、装备代码、发呆时间、更换目标时间、攻击距离、好战度、视野等配置