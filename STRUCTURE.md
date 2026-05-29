# Lesson File Structure

Every lesson inside the `lessons/` folder follows this exact structure.
Do not skip any section. Keep it consistent across all lessons.

---

## Template

```md
# 01 — Lesson Title

## What you will learn
A few bullet points — what the reader will know by the end of this lesson.

## Explanation
Plain English explanation of the concept. No assumed knowledge.
Keep it short and clear.

## Commands
All commands used in this lesson with a comment on what each does.

```bash
git example-command   # what this does
```

## Example
A real, working example showing the commands in action.
Show input and expected output where possible.

## Common mistakes
Things people get wrong. Keep to 2-3 points.

## Summary
One or two lines wrapping up what was covered.

## Next lesson
Link to the next file.
```

---

## Rules

- File name format: `01-lesson-name.md` — always two digit number prefix
- One concept per lesson — do not combine two topics in one file
- Commands section must have every command used in that lesson, no exceptions
- Example section must be a real working example, not pseudocode
- No external links inside lesson files — keep everything self-contained
- Update the status in `README.md` to ✅ when a lesson is complete
