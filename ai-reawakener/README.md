# 🧠 AI Reawakener GPT

**AI Reawakener** is an advanced assistant built to **revive, reinterpret, and evolve legacy digital and creative projects** using modern AI tools and frameworks (2025). It supports workflows ranging from **faithful restoration** to **radical reimagination**, powered by structured reinterpretation logic: **interpretive lenses**, **drift levels**, and **output modes** — with built-in checks for **agentic AI feasibility** and collaborative development support.

---

## 📖 Table of Contents

- [✅ Purpose](#-purpose)
- [🗂 Files](#-files)
- [🚀 Quick Start](#-quick-start)
- [📌 Live Custom GPT](#-live-custom-gpt)
- [🔄 Versioning](#-versioning)
- [📜 License](#-license)
- [🤝 Contributing](#-contributing)
- [❓ FAQ](#-faq)

---

## ✅ Purpose

- Help users reimagine creative, functional, or experimental legacy projects using AI  
- Translate concepts into new tools, formats, or platforms  
- Add interactivity, storytelling, or multimodality using voice, image, and text models  
- Evaluate feasibility and risk of applying agentic AI  
- Support iterative refinement and collaborative exploration  
- Encourage modular reuse in creative pipelines, branding systems, or innovation labs

---

## 🗂 Files

### 📄 `ai-reawakener-GPT.md`

The complete assistant logic used in the `instructions` field of your GPT configuration:

- Defines the role, purpose, and behavioral rules  
- Explains **16+ interpretive lenses** (e.g. Creative Remaster, Data Companion, Brand Evolution)  
- Includes **7 drift levels** (0 = Preservation → 6 = Speculative Future)  
- Lists output modes (Concept, Strategy, Agentic AI, etc.)  
- Describes the structured output format  
- Includes: prompt chaining, edge-case handling, agentic AI maturity filters, and collaborative methods

---

### 📄 `ai-reawakener-facing-prompt.md`

A highly optimized **"facing prompt"** for ChatGPT, Claude, or any AI frontend:

- Summarizes assistant logic in a clear, user-facing format  
- Includes input types (project, goal, lens, drift, output mode)  
- Defines all lenses and drift levels (with examples)  
- Explains output expectations and refinement loop  
- Offers edge-case support and modular usage tips  
- Ideal for direct copy-paste or UI-based deployments

---

### 🧠 `ai-reawakener-GPT-config.json`

Reference for the assistant’s GPT configuration. Includes:

- Assistant name, description, and full instruction text  
- Conversation starters  
- Model: `gpt-4o`  
- Runtime settings:
  - `"temperature": 0.85`  
  - `"top_p": 1`  
  - `"presence_penalty": 0.6`  
  - `"frequency_penalty": 0.4`
- Tool access:
  - ✅ Web browsing  
  - ✅ Code interpreter  
  - ✅ Image generation  
  - ❌ Memory

> ⚠️ Note: OpenAI does not currently support `.json` uploads. Use this file for **manual reconstruction or version tracking**.

---

### 🧪 `ai-reawakener-GPT-capabilities.md`

Snapshot of the GPT UI configuration, used for transparency and reproducibility:

- Enabled tools  
- Welcome message  
- Conversation starters  
- Model type and UI sync  
- Instruction and file references  
- Useful for verifying assistant behavior over time

---

## 🚀 Quick Start

1. **Review** the `facing-prompt.md` file to understand how to interact with the assistant  
2. **Paste** the facing prompt into ChatGPT, Claude, or your preferred LLM frontend  
3. **Customize** your GPT manually using the settings from `ai-reawakener-GPT-config.json`  
4. **Iterate** using prompt chaining or adjust lens/drift/mode for refinement  
5. **Collaborate** via Miro, Figma Jam, or Notion if building with teams or stakeholders

---

## 📌 Live Custom GPT

👉 [Launch the assistant on ChatGPT](https://chatgpt.com/g/g-68621795d7b48191b6d0192d3f4b0fc2-ai-reawakener)

---

## 🔄 Versioning

- **Current version:** v1.0.0  
- **Last updated:** 2025-06-30  
- **Changelog:** See `CHANGELOG.md` (if included)

---

## 📜 License

[MIT License](./LICENSE) unless otherwise stated.  
You may reuse, remix, and expand this assistant architecture with credit.

---

## 🤝 Contributing

Want to improve this assistant or build your own lens or drift set?  
Feel free to fork or adapt it — contributions via pull request or issue welcome.

---

## ❓ FAQ

**Q: Can I import this `.json` into OpenAI’s GPT builder?**  
A: No. OpenAI doesn’t support `.json` imports. Use it for backup or manual recreation.

**Q: Do I have to use all the lenses or drift levels?**  
A: No. You can just describe your project and the assistant will recommend relevant options.

**Q: Is this just for Flash or visual legacy work?**  
A: Not at all. It supports functional tools, brand projects, educational platforms, speculative concepts, and more.

---

> Part of the [prompt-driven-ai-assistants](../README.md) system.
