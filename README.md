# Chinese Resume in Typst

使用 Typst 编写的中文简历.

样式上, 参考了 [liweitianux/resume](https://github.com/liweitianux/resume) 与 [uniquecv](https://github.com/dyinnz/uniquecv). 同时也参考了一部分 [uniquecv-typst](https://github.com/gaoachao/uniquecv-typst) 的写法.

语法上, 基于以下 Typst 的设计原则编写 (简洁一致与组合原则):

> - **Simplicity through Consistency:** If you know how to do one thing in Typst, you should be able to transfer that knowledge to other things. If there are multiple ways to do the same thing, one of them should be at a different level of abstraction than the other. E.g. it's okay that `= Introduction` and `#heading[Introduction]` do the same thing because the former is just syntax sugar for the latter.
> - **Power through Composability:** There are two ways to make something flexible: Have a knob for everything or have a few knobs that you can combine in many ways. Typst is designed with the second way in mind. We provide systems that you can compose in ways we've never even thought of. TeX is also in the second category, but it's a bit low-level and therefore people use LaTeX instead. But there, we don't really have that much composability. Instead, there's a package for everything (\usepackage{knob}).


## 使用

### 在线编辑

可以使用 Typst 的 Web App,

模板链接: https://typst.app/project/rw1SLr0IIZZnCrkrsypRQF


### 本地编辑（推荐）

- 安装 VS Code，以及 Typst LSP 和 Typst Preview 插件。
- 打开 `resume.typ` 文件，按下 `Ctrl + K V` 快捷键后即可显示与编辑。
- 按下 `Shift + Ctrl + P` 后执行 `Typst: Export the currently open file as PDF` 即可导出 PDF 文件。


## 效果

包含照片:

![](examples/resume-with-photograph.jpg)

不包含照片:

![](examples/resume-without-photograph.jpg)


## 示例

你可以使用 **简洁** 与 **组合式** 的语法出美观的效果.

```typst
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
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "profile.jpg",
  photographWidth: 10em,
  gutterWidth: 2em,
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

#h(2em)  // 手动顶行, 2em 代表两个字的宽度
我是 OrangeX4，你也可以叫我 *一只方橙* 或 *方橙*。
现在是南京大学人工智能学院 2020 级本科生，正深陷于学习数学、编程和英语的无边苦海中。
你问为什么我的名字那么奇怪？ 大概是我喜欢吃橘子和橙子，又谐音方程，还有和我的名字谐音的缘故吧。
喜欢一切新奇的东西，兴趣十分广泛。

]
```

以及每一个块

```typst
== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 12%)[
  2023.05
  
  2020.09
][
  *南京大学* · 人工智能学院 · 人工智能专业
  
  GPA: 4.48 / 5 · Rank: 15%
]
```

```typst
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
```