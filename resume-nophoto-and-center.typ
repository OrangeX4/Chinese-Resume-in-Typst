#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  head_center : true
  // 如果不需要头像，则将下面的参数注释或删除
  /*photograph: "profile.jpg",
  photographWidth: 10em,
  gutterWidth: 2em,*/
)[

= 方橙

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 155-5555-5555"
  ),
  (
    icon: faBuildingColumns,
    content: "南京大学",
  ),
  (
    icon: faGraduationCap,
    content: "人工智能",
  ),
  (
    icon: faEnvelope,
    content: "orangex4@qq.com",
    link: "mailto:orangex4@qq.com"
  ),
  (
    icon: faGithub,
    content: "github.com/orangex4",
    link: "https://github.com/orangex4",
  ),
)



][#h(1em)  // 手动顶行, 2em 代表两个字的宽度
我是 OrangeX4，你也可以叫我 *一只方橙* 或 *方橙*。现在是南京大学人工智能学院 2020 级本科生，正深陷于学习数学、编程和英语的无边苦海中。你问为什么我的名字那么奇怪？ 大概是我喜欢吃橘子和橙子，又谐音方程，还有和我的名字谐音的缘故吧。喜欢一切新奇的东西，兴趣十分广泛。]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 12%)[
  2023.05
  
  2020.09
][
  *南京大学* · 人工智能学院 · 人工智能专业
  
  GPA: 4.48 / 5 · Rank: 15%
]


== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 12%)[
  *操作系统*
  
  *掌握*
  
  *熟悉*

  *了解*
][
  #faLinux Linux, #h(0.5em) #faWindows Windows
  
  React, JavaScript, Python
  
  Vue, TypeScript, Node.js

  Webpack, Java
]


== #faAward 获奖情况

#item(
  [ *人民奖学金* ],
  [ *一等奖 · 二等奖* ],
  date[ 2021 年 11 月 – 2022 年 11 月 ]
)

#item(
  [ *人工智能 +* ],
  [ *二等奖* ],
  date[ 2021 年 11 月 – 2022 年 11 月 ]
)

// == #faWork 实习经历

// 在这里添加你的实习经历

== #faCode 项目经历

#item(
  link(
    "https://github.com/OrangeX4/Latex-Sympy-Calculator",
    [ *Latex Sympy Calculator* ]
  ),
  [ *个人项目* ],
  date[ 2021 年 02 月 – 2021 年 04 月 ]
)

#tech[ NodeJS, Python, VS Code ]

一个用于在 VS Code 中使用 LaTeX 数学公式进行「科学计算」的插件

- 使用 ANTLR 将 LaTeX 语句编译为 Sympy 语句
- 通过 Flask 搭建本地 HTTP 服务器与 VS Code 插件进行通信
- 可以进行多种类型的科学计算，如积分求导、矩阵计算、无穷级数计算等

#item(
  link(
    "https://github.com/OrangeX4/Reversi",
    [ *黑白棋 Reversi* ]
  ),
  [ *课程项目* ],
  date[ 2021 年 02 月 – 2021 年 04 月 ]
)

#tech[ React, Python, AI ]

基于 React 与 Antd 的黑白棋前端，与基于 Python 的黑白棋 AI 后端

- 使用基于评估函数的 BFS 实现了黑白棋 AI，并实现了 Alpha-Beta 剪枝
- 基于 React 搭建了一个黑白棋平台前端，支持玩家对战、人机对战和 AI 对战
- 在后端使用 Flask 及 Socket.io 库，实现了玩家之间的联机对战


== #faBuildingColumns 校园经历


#item(
  [ *微软学生俱乐部技术部部长* ],
  [],
  date[ 2021 年 09 月 – 2022 年 09 月 ]
)