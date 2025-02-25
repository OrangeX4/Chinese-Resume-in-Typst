#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile.jpg",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = 某某

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 133-3333-3333",
    ),
    (
      icon: fa-building-columns,
      content: "某某大学",
    ),
    (
      icon: fa-graduation-cap,
      content: "某某专业",
    ),
    (
      icon: fa-envelope,
      content: "liming@example.com",
      link: "mailto:liming@example.com",
    ),
    (
      icon: fa-github,
      content: "github.com/liming-dev",
      link: "https://github.com/liming-dev",
    ),
  )
][
  #h(2em)

  *简历内容由 AI 生成，不代表真实内容。*作为一名计算机专业的学生，我专注于全栈开发和云计算技术。具有扎实的编程基础，热衷于开源项目贡献。在校期间参与多个实验室项目，对人工智能和分布式系统有深入研究。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2024.06

  2020.09
][
  *某某大学* · 某某学院 · 某某专业

  GPA: 5 / 5 · Rank: 0%
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *操作系统*
  
  *掌握*
  
  *熟悉*

  *了解*
][
  #fa-linux Linux, #h(0.5em) #fa-windows Windows
  
  React, JavaScript, Python
  
  Vue, TypeScript, Node.js

  Webpack, Java
]


== #fa-award 获奖情况

#item(
  [ *互联网+ 大学生创新创业大赛* ],
  [ *省级金奖* ],
  date[ 2022 年 10 月 ],
)

#item(
  [ *ACM-ICPC 区域赛* ],
  [ *铜奖* ],
  date[ 2021 年 12 月 ],
)


== #fa-code 项目经历

#item(
  link(
    "https://github.com/liming-dev/cloud-platform",
    [ *轻量级容器云平台* ],
  ),
  [ *实验室项目* ],
  date[ 2022 年 03 月 – 2022 年 12 月 ],
)

#tech[ Golang, Docker, Kubernetes ]

基于 Kubernetes 的容器管理平台，提供Web界面的容器编排服务

- 设计实现了基于 RBAC 的多租户权限管理系统
- 开发了容器资源动态伸缩和负载均衡模块
- 使用 Prometheus 和 Grafana 构建监控告警系统

#item(
  link(
    "https://github.com/liming-dev/distributed-cache",
    [ *分布式缓存系统* ],
  ),
  [ *个人项目* ],
  date[ 2023 年 01 月 – 2023 年 04 月 ],
)

#tech[ Golang, Redis, etcd ]

一个支持分布式部署的高性能缓存系统

- 实现了一致性哈希算法进行数据分片
- 采用 Raft 协议保证集群一致性
- 支持缓存自动过期和 LRU 淘汰策略


== #fa-building-columns 校园经历

#item(
  [ *计算机学院学生科创中心主席* ],
  [],
  date[ 2022 年 09 月 – 2023 年 06 月 ],
)
