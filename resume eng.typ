#import "template.typ": *

#set page(
  margin: (
    left: 10mm,
    right: 10mm,
    top: 15mm,
    bottom: 14mm
  ),
)

#set text(font: "Mulish", lang: "en", region: "US")

#show: project.with(
  theme: rgb("#0F83C0"),
  name: "YuHeng Xu",
  // title: "Software Engineer",
  contact: (
    contact(
      text: "+86 137-1477-8940"
    ),
    contact(
      text: "xyhken@icloud.com",
      link: "mailto:xyhken@icloud.com"
    ),
  ),
  main: (
    section(
      title: "Research Experience",
      content: (
        subSection(
          title: "[CVPR2025 First Author] AutoLUT",
          titleEnd: "NJU MCG",
          subTitle: [AutoLUT: LUT-Based Image Super-Resolution with Automatic Sampling and Adaptive Residual Learning],
          content: list(
            [Previous MuLUT uses fixed sampling strategies. I introduced an *AutoSample layer* which allows configuring the sample size freely and enables the network to learn an empirically better sampling strategy. ],
            [Due to the numerical range of LUT inputs, the previous work did not use a residual network. I introduced *AdaRL (Adaptive Residual Learning)* which enhances the network's performance without increasing the size of the LUT.],
            [My method can made *0.3db PSNR* improvement on MuLUT and reduce storage usage by more than 50% on SPF-LUT (SOTA).]
          ),
        ),
      )
    ),
    section(
      title: "Internship Experience",
      content: (
        subSection(
          title: "ByteDance",
          titleEnd: "ShenZhen",
          subTitle: "Lark iOS Development",
          subTitleEnd: "(2025.1 - 2025.4)",
          content: list(
            [In charge of PermissionSDK for HarmonyOS Next],
          ),
        ),
      ),
    ),
    section(
      title: "Project Experience",
      content: (
        subSection(
          title: "Alternative Schedule for NJU",
          subTitle: "A calendar subscription service",
          titleEnd: github-link("SuperKenVery/nju-schedule-ics"),
          content: list(
            [Scrapes the NJU course schedule and converts it to iCalendar format for subscription services, with a Rust backend and a 0-javascript frontend],
            [Conservatively estimated to have hundreds of users.],
          )
        ),
        subSection(
          title: "Wow Lyrics",
          titleEnd: github-link("SuperKenVery/wow-lyric"),
          subTitle: "Apple-Music-like lyric animation",
          content: list(
            [Written in WebGL with custom shaders],
            [Implemented lyric scrolling, dynamic gaussian blur and rotating and blurred background.]
          )
        ),
        subSection(
          title: "Nemu",
          titleEnd: github-link("SuperKenVery/nju-ics-pa"),
          subTitle: "An x86 virtual machine and a 32-bit protected mode kernel",
          content: list(
            [It can run #link("https://github.com/sdlpal/sdlpal", underline("SDLPAL"))],
          )
        ),
        subSection(
          title: "Element-web",
          subTitle: "A large-scale opensource chat app",
          titleEnd: github-link("element-hq/element-web"),
          content: list(
            [Fixed Safari IME bug],
            [Added support for "Insert from iPhone/iPad" on Safari],
            [Use WebAudioAPI to play notification sound so that it doesn't appear in system media control]
          )
        ),
        subSection(
          title: "chatgpt wrapper",
          titleEnd: github-link("llm-workflow-engine/llm-workflow-engine", body: "llm-workflow-engine"),
          subTitle: "A third-party ChatGPT API before OpenAI released its official one",
          content: list(
            [Greatly improved stableness by using a headless browser to complete captcha],
            [Added async support]
          )
        ),
      ),
    ),
  ),
  sidebar: (
    section(
      title: "Skills",
      content: (
        subSection(
          title: "Languages",
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
      title: "Education background",
      content: (
        subSection(
          title: [NanJing University],
          subTitle: "Batchelor's degree, Computer Science",
          content: [
            2022-2026

            Current GPA 4.45/5.0
          ],
        ),
      ),
    ),
    section(
      title: "Work & Honors",
      content: (
        subSection(
          content: list(
            [People’s Scholarship Second Prize],
            [People’s Scholarship Third Prize],
            [Co-founder and Technical Team Member of NJU AIA Artificial Intelligence Association],
            [Head of Technical Department of Nanjing University TIC TengChuang Rhino Bird Club],
            [Member of NJU Trinity CTF Team],
            [SICP (Structure and Interpretation of Computer Programs) 2023 Course Teaching Assistant],
          ),
        ),
      ),
    ),
  ),
)
