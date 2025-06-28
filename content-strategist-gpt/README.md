# 🧠 Professional Content Strategist GPT

This assistant helps professionals craft impactful social media content using one of **three strategic modes** — **High Performance**, **Balanced Clarity**, or **Narrative Essence**. Each mode aligns with different goals, tones, and audiences, using modern storytelling, copywriting, and **prompt engineering** techniques.

---

## ✅ Purpose

- Help professionals write scroll-stopping content across different tones and formats  
- Enable repeatable, testable strategies using structured prompting  
- Support modern content formats (carousel, article, video, story)  
- Encourage SEO-aware phrasing, audience targeting, and real personalization  

---

## 🗂 Files

### 📄 `Professional-Content-Strategist-GPT.md`

Main instruction set (used in the `instructions` field of the `.json` config):

- Explains the 3 strategic content modes
- Details tone, hook, structure, CTA, design and prompt tips per mode
- Defines input structure (mode, persona, topic, audience, etc.)
- Specifies output format and explanation breakdown
- **Includes optional strategic enhancers**:
  - Use Case Framing
  - Authority Signals
  - Question-Based Hooks
  - Comparative Positioning
  - Formatting Tips for AI indexing
- Uses advanced prompt engineering techniques:
  - Scrambled Prompting
  - Emotion Shaping
  - Interpretive Drift
  - Prompt Chaining
  - Recursive Self-Improvement

---

### 📄 `Professional-Content-Strategist-Facing-Prompt.md`

This is a condensed version of the assistant’s purpose and logic, formatted as a **"facing prompt"** — usable in ChatGPT, Claude, or any AI tool that supports structured prompts.

Includes:

- Input field list (mode, persona, audience, topic, etc.)
- Mode-based tone, structure, and formatting tips
- Expected output structure
- Optimization notes aligned with strategic enhancers

---

### 🧠 `Professional-Content-Strategist-GPT-config.json`

**Purpose:** Configuration reference file for the assistant’s full setup

- Mirrors the setup created in OpenAI’s Custom GPT builder
- Includes:
  - Assistant name and description
  - `instructions` field (synced from `.md`)
  - Welcome message
  - Conversation starters
  - Model: `gpt-4`
- Emojis and formatting are UTF-8 safe and properly escaped

> ⚠️ Note: OpenAI doesn’t currently support `.json` imports.  
> This file is for **backup**, **version control**, and **manual recreation** in the GPT builder.


### 🔗 Live Custom GPT

👉 [Launch the assistant on ChatGPT](https://chatgpt.com/g/g-685e778055e881919209238549e5f902-professional-content-strategist?model=gpt-4)

---

## ✅ Best Practices

1. Use the `.md` files to update behavior and share versions  
2. Use the `.json` to document your build or recreate it later  
3. Keep this folder organized or zipped if sharing with others  

---

## 📦 File Naming Pattern for Future Assistants

Use the same structure:

- `[YourAssistantName]-GPT.md`  
- `[YourAssistantName]-Facing-Prompt.md`  
- `[YourAssistantName]-GPT-config.json`  
