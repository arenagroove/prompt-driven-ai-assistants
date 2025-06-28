# 🧠 Professional Content Strategist GPT – Project Files

This package contains all the necessary components to understand, edit, and replicate the **Professional Content Strategist** custom GPT assistant.

---

## 📁 Included Files

### 1. `Professional-Content-Strategist-GPT.md`
**Purpose:** Defines the assistant’s full behavior and logic.

- Describes the three strategic content modes:
  - High Performance
  - Balanced Clarity
  - Narrative Essence
- Includes tone guidelines, structure breakdowns, and prompt engineering tips
- Use this as the **source of truth** for your GPT instructions field

---

### 2. `Professional-Content-Strategist-Facing-Prompt.md`
**Purpose:** A reusable prompt template for use **outside** of the Custom GPT builder

- Works with tools like ChatGPT, Claude, or Notion AI
- Contains all required inputs (mode, persona, audience, topic, etc.)
- Includes formatting, tone, structure, and expected output layout

---

### 3. `Professional-Content-Strategist-GPT-config.json`
**Purpose:** Configuration reference file for the assistant’s full setup

- Mirrors the setup you created in OpenAI’s GPT builder
- Includes:
  - Name and description
  - Instructions (from the `.md`)
  - Welcome message
  - Starter prompts
  - Model (`gpt-4`)
- ⚠️ **Note:** OpenAI doesn’t currently support `.json` imports — this file is for backup or manual replication

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

---

> Built as part of a modular, prompt-driven AI assistant framework.
