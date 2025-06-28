# 🧠 Professional Content Strategist GPT – Project Files

This package contains all the necessary components to understand, use, and maintain the **Professional Content Strategist** Custom GPT assistant.

---

## 📁 Included Files

### 1. `Professional-Content-Strategist-GPT.md`
**Purpose:** Defines the assistant's full behavior and logic.

- Contains detailed descriptions of the three content modes:
  - High Performance
  - Balanced Clarity
  - Narrative Essence
- Includes prompt engineering tips, tone guidance, and structure breakdown.
- Use this as the **source of truth** for your Custom GPT's instructions field.

---

### 2. `Professional-Content-Strategist-Facing-Prompt.md`
**Purpose:** A detailed prompt template for use **outside** of the GPT builder.

- Designed for ChatGPT, Claude, Notion AI, etc.
- Helps you or others structure content generation without needing the assistant preloaded.
- Contains input fields, mode-specific behaviors, and expected output format.

---

### 3. `Professional-Content-Strategist-GPT-config.json`
**Purpose:** Full configuration snapshot for your Custom GPT (OpenAI format).

- Includes:
  - Name
  - Description (aligned with the `.md`)
  - Instructions
  - Welcome message
  - Conversation starters
  - Model = `gpt-4`
- ⚠️ **Note:** OpenAI currently does not support importing `.json` configs directly, but this serves as a backup or documentation snapshot.

---

## ✅ Best Practice

1. Use the `.md` files for editing and sharing.
2. Use the `.json` as version control and a reference for rebuilds.
3. Keep this folder zipped for archive or cloning across GPTs.

---

For future assistants, follow this pattern:
- `[Your-Project]-GPT.md`
- `[Your-Project]-Facing-Prompt.md`
- `[Your-Project]-GPT-config.json`