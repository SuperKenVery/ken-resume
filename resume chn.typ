#import "template.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#set page(
  margin: (
    left: 10mm,
    right: 10mm,
    top: 15mm,
    bottom: 15mm
  ),
)

#set text(font: "Mulish", lang: "zh", region: "CN")

#show: project.with(
  theme: rgb("#888888"),
  name: "许煜恒",
  // title: "Software Engineer",
  contact: (
    contact(
      text: "137-1477-8940"
    ),
    contact(
      text: "xyhken@icloud.com",
      link: "mailto:xyhken@icloud.com"
    ),
  ),
  main: (
    section(
      title: "科研经历",
      content: (
        subSection(
          title: [*[CVPR2025 一作]* AutoLUT],
          titleEnd: "南京大学MCG媒体计算研究组",
          subTitle: [AutoLUT: LUT-Based Image Super-Resolution with Automatic Sampling and Adaptive Residual Learning],
          content: list(
            [前作MuLUT使用了固定的sdy采样策略；我改成自学习的采样方式，允许自由地调整采样策略和采样范围，增大了感知野、改善了采样效果],
            [由于LUT输入数字范围问题，前作并未使用残差网络。我通过引入自学习残差，动态调整前后输入的权重，在不增大查找表体积的同时增强了网络的性能],
            [我的方法在MuLUT上可提升*0.3db PSNR*，在SPF-LUT（SOTA）上可*降低超过50%*的存储占用]
          ),
        ),
      )
    ),
    section(
      title: "实习经历",
      content: (
        subSection(
          title: "字节跳动",
          titleEnd: "深圳",
          subTitle: "飞书 iOS开发",
          subTitleEnd: "(2025.1 - 2025.4)",
          content: list(
            [负责鸿蒙next的权限中台SDK，使用rust编写，预计安卓和iOS也会使用此代码],
            [修复各种bug，包括一些长尾问题],
          ),
        ),
      ),
    ),
    section(
      title: "项目经历",
      content: (
        subSection(
          title: "南哪另一课表",
          subTitle: "日历订阅服务",
          titleEnd: github-link("SuperKenVery/nju-schedule-ics"),
          content: list(
            [爬取南京大学课表转换为iCalendar格式的日历，提供订阅服务],
            [Rust服务端，0-javascript 网页前端],
            [保守估计上百用户],
          )
        ),
        subSection(
          title: "Wow Lyrics",
          titleEnd: github-link("SuperKenVery/wow-lyric"),
          subTitle: "类似Apple Music的歌词动画",
          content: list(
            [使用WebGL自定义shader开发的类似Apple Music歌词动画],
            [实现了歌词滚动动画、动态高斯模糊、旋转+模糊背景]
          )
        ),
        subSection(
          title: "Nemu",
          titleEnd: github-link("SuperKenVery/nju-ics-pa"),
          subTitle: "一个x86的虚拟机，以及一个32位保护模式的内核",
          content: list(
            [可以运行开源版仙剑奇侠传 #link("https://github.com/sdlpal/sdlpal", underline("SDLPAL"))],
          )
        ),
        subSection(
          title: "Element-web",
          subTitle: "一个大型的开源聊天软件",
          titleEnd: github-link("element-hq/element-web"),
          content: list(
            [修复了Safari中文输入法的bug],
            [添加了Safari“从iPhone/iPad插入”的支持],
            [使用WebAudioAPI让播放通知的铃声不会出现在系统媒体控制中]
          )
        ),
        subSection(
          title: "chatgpt wrapper",
          titleEnd: github-link("llm-workflow-engine/llm-workflow-engine", body: "llm-workflow-engine"),
          subTitle: "OpenAI尚未提供ChatGPT API时的第三方API",
          content: list(
            [通过使用无头浏览器完成captcha大幅改善稳定性，减小session失效概率],
            [添加了异步调用支持],
          )
        ),
      ),
    ),
  ),
  sidebar: (
    section(
      title: "技能",
      content: (
        subSection(
          title: "语言",
          content: (
            "Python",
            "Rust",
            "C/C++",
            "Swift",
            "CSS",
            "HTML5",
            "Java",
            "JavaScript",
            "TypeScript",
          ).join(" • "),
        ),
      ),
    ),
    section(
      title: "教育背景",
      content: (
        subSection(
          title: [南京大学],
          subTitle: "本科 计算机科学与技术",
          content: [
            2022-2026

            目前GPA 4.45/5.0
          ],
        ),
      ),
    ),
    section(
      title: "学生工作与荣誉奖项",
      content: (
        subSection(
          content: list(
            [人民奖学金二等奖],
            [人民奖学金三等奖],
            [南京大学AIA人工智能协会共同创建者、技术组成员],
            [南京大学TIC腾创犀牛鸟俱乐部技术部部长],
            [南京大学Trinity CTF战队成员],
            [SICP（计算机程序的构造与解释） 2023年课程助教]
          ),
        ),
      ),
    ),
    section(
      title: "竞赛",
      content: (
        subSection(
          content: list(
            [中国网谷·华为杯”第三届中国研究生网络安全创新大赛决赛 三等奖]
          ),
        ),
      ),
    )
  ),
)
