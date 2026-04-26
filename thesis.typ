#import "template.typ": *

#show: doc => conf(
  cauthor: "城小环",
  eauthor: "Xiaohuan Cheng",
  studentid: "23000xxxxx",
  blindid: "L2023XXXXX",
  cthesisname: "本科生毕业论文",
  // 可以用 \n 控制中英文标题在非盲审封面 (blind=false) 中的换行点
  // 在盲审封面 (blind=true) 中，手工插入的 \n 会被忽略，以确保标题连续
  ctitle: "本科生毕业论文 Typst 模板",
  etitle: "PKU Undergraduate Thesis Typst Template",
  school: "城市与环境学院",
  cmajor: "自然地理与资源环境",
  csupervisor: "大地 教授",
  date: (year: 2026, month: 6),
  cabstract: include "doc/cabstract.typ",
  ckeywords: ("Typst", "学位论文", "排版模板", "北京大学"),
  eabstract: include "doc/eabstract.typ",
  ekeywords: (
    "Typst",
    "Undergraduate Thesis",
    "Template",
    "Peking University",
  ),
  acknowledgements: include "doc/acknowledgements.typ",
  outlinedepth: 3,
  blind: false,
  listofimage: false,
  listoftable: false,
  listofcode: false,
  alwaysstartodd: false,
  cleandeclaration: true,
  candidate-signature: image("template/signature-candidate.svg", height: 1.5em),
  supervisor-signature: image("template/signature-supervisor.svg", height: 1.5em),
  bibcontent: read("ref.bib"),
  bibstyle: "numeric",
  bibversion: "2015",
  doc,
)

= 快速开始 <quickstart>

#include "doc/ch01-quickstart.typ"

= 模板配置选项 <config>

#include "doc/ch02-config.typ"

= Typst 基本功能 <typst-basics>

本章介绍 Typst 的基本语法和功能，帮助用户快速上手。

#include "doc/ch03-basics.typ"

= 常见问题与解决方案 <faq>

#include "doc/ch04-faq.typ"

= 进阶使用技巧 <advanced>

#include "doc/ch05-advanced.typ"

#appendix()

= 关于 Typst <about>

#include "doc/appendix-about.typ"

= 更新日志 <changelog>

#include "changelog.typ"
