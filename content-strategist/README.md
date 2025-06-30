# 🧠 Professional Content Strategist GPT

**Professional Content Strategist** is an advanced assistant designed to help professionals craft impactful, goal-driven content using one of **three strategic content modes** — **High Performance**, **Balanced Clarity**, or **Narrative Essence**. Each mode guides tone, structure, and emotional strategy, using modern copywriting techniques and prompt engineering logic optimized for AI-assisted creation (2025).

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

- Help creators and strategists write high-performing social content  
- Enable structured, testable modes of expression across different goals  
- Support modern formats (carousel, video, story, article)  
- Encourage SEO-aware writing and emotionally resonant messaging  
- Apply advanced prompt engineering techniques to build better content faster

---

## 🗂 Files

### 📄 `content-strategist-GPT.md`

Main instruction set used in the GPT `instructions` field. Includes:

- Definitions of the **3 strategic modes**:
  - **High Performance** → maximize engagement, conversion  
  - **Balanced Clarity** → informative, professional insight  
  - **Narrative Essence** → emotional connection through storytelling  
- Structure and tone per mode (hook, value, CTA, social proof, objection handling)  
- Full input specification: mode, persona, audience, topic, platform, CTA, emotion, etc.  
- **Output formatting guide** with AI-ready structure  
- Optional **strategic enhancers**:
  - Use Case Framing, Authority Signals, Emotion Shaping, Prompt Chaining, etc.

---

### 📄 `content-strategist-facing-prompt.md`

Condensed prompt used to trigger the assistant behavior in ChatGPT or Claude.

- Lists inputs (mode, topic, persona, etc.)  
- Describes each mode’s emotional trigger, structure, and content tone  
- Output expectations: post + explanation  
- Optimized for AI prompt chaining, copy refinement, and emotional alignment

---

### 🧠 `content-strategist-GPT-config.json`

Snapshot of the assistant’s actual GPT configuration:

- **Name:** `Professional Content Strategist`  
- **Description:** A role-based assistant that helps creators and strategists write powerful content in three distinct modes — from viral hooks to clear insights to story-led posts.  
- **Instructions:** Full structured prompt architecture (see `content-strategist-GPT.md`)  
- **Model:** `gpt-4o`  
- **Tools Enabled:**
  - ✅ Web browsing  
  - ✅ Code interpreter  
  - ✅ Image generation  
  - ❌ Memory  
- **Welcome Message:**  
  _"Hi! Ready to create high-impact content? Choose a mode and tell me your topic, audience, and goal."_  
- **Conversation Starters:**
  - “Create a high-performance post about burnout for startup founders.”  
  - “Write a Balanced Clarity carousel on AI onboarding for HR professionals.”  
  - “Tell a Narrative Essence story about creative block and personal growth.”  
  - “Guide me through a post using mode, persona, audience, topic, and more.”  

> ⚠️ OpenAI’s Custom GPT builder does not currently support importing `.json` config files.  
> Use this file for backup, version control, or manual reconstruction.

---

### 🧪 `content-strategist-GPT-capabilities.md`

Documents GPT Builder UI configuration:

- Tool permissions: web browsing, image generation, code interpreter  
- Memory setting  
- Instruction sync source and conversation starters  
- UI-level data for reproducibility or collaboration

---

## 🚀 Quick Start

1. Open ChatGPT and paste the `facing-prompt.md`  
2. Choose your **Mode**, **Persona**, **Topic**, and **Audience**  
3. Optionally adjust CTA style, emotion, or format  
4. Review the assistant’s draft and iterate using:
   - “Push this to a more emotional angle”  
   - “Make this fit a carousel instead of a story”  
   - “Rewrite for SaaS founders in finance”

---

## 📌 Live Custom GPT

👉 [Launch the assistant on ChatGPT](https://chatgpt.com/g/g-685e778055e881919209238549e5f902-professional-content-strategist?model=gpt-4)

---

## 🔄 Versioning

- **Current version:** v1.0.0  
- **Last updated:** 2025-06-30  
- **Changelog:** See `CHANGELOG.md` if included

---

## 📜 License

MIT License unless otherwise specified.  
Feel free to reuse and adapt with credit.

---

## 🤝 Contributing

Want to add new modes, creative prompting strategies, or emotion shaping presets?  
Fork this assistant or submit improvements — all contributions welcome.

---

## ❓ FAQ

**Q: Can I add my own mode or rewrite structure?**  
A: Yes — the prompt architecture is modular. You can add a fourth mode and update tone, CTA, or strategy logic.

**Q: What’s the difference between High Performance and Balanced Clarity?**  
A: High Performance maximizes reach with urgency and social proof. Balanced Clarity focuses on trust, insight, and accessibility.

**Q: Is this just for LinkedIn?**  
A: No — it works for Instagram carousels, X threads, newsletters, and more.

---

> Part of the [prompt-driven-ai-assistants](../README.md) system.
