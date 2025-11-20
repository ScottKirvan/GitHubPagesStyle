---
layout: default
title: GitHub Markdown Test Page
---

# h1 Heading - GitHub Markdown Test

This comprehensive test page validates GitHub Primer stylesheet rendering across all markdown elements.

## h2 Heading - Typography
### h3 Heading - Text Styles
#### h4 Heading - Smaller
##### h5 Heading - Even Smaller
###### h6 Heading - Smallest

## Horizontal Rules

Three or more dashes:

---

Three or more asterisks:

***

Three or more underscores:

___

## Emphasis

**This is bold text using asterisks**

__This is bold text using underscores__

*This is italic text using asterisks*

_This is italic text using underscores_

~~Strikethrough text~~

**Bold with *nested italic* text**

*Italic with **nested bold** text*

***Bold and italic combined***

## Blockquotes

> Standard blockquote with a single level.
> Can span multiple lines.

> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
> > > ...or with spaces between arrows.

> Blockquote with **bold**, *italic*, and `code`
>
> Multiple paragraphs in blockquotes work too.

## GitHub Alerts / Callouts

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

## Lists

### Unordered Lists

+ Create a list by starting a line with `+`, `-`, or `*`
+ Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
+ Very easy!

Alternative syntax:

- First item
- Second item
  - Nested item 1
  - Nested item 2
    - Deeply nested item
- Third item

### Ordered Lists

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa

You can use sequential numbers:

1. First
2. Second
3. Third

Or keep all numbers as `1.`:

1. First
1. Second
1. Third

Start numbering with offset:

57. Item 57
1. Item 58
1. Item 59

### Task Lists

- [x] Completed task
- [ ] Incomplete task
- [x] Another completed task
  - [ ] Nested incomplete task
  - [x] Nested completed task
- [ ] Task with **bold** and *italic*
- [x] Task with `inline code`

## Code

### Inline Code

Inline `code` has `backticks around` it.

Use `git status` to check repository status. Variables like `const foo = "bar"` should be highlighted.

Path example: `/usr/local/bin` and command: `npm install`

### Indented Code Blocks

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code

### Fenced Code Blocks

```
Sample text here...
No syntax highlighting
```

### Syntax Highlighting

JavaScript:
```js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

More JavaScript:
```javascript
// JavaScript example with comments
function greet(name) {
    console.log(`Hello, ${name}!`);
    return true;
}

const user = "World";
greet(user);
```

Python:
```python
# Python example
def calculate_sum(numbers):
    """Calculate the sum of a list of numbers."""
    total = sum(numbers)
    return total

result = calculate_sum([1, 2, 3, 4, 5])
print(f"The sum is: {result}")
```

CSS:
```css
/* CSS example */
:root {
    --primary-color: #409eff;
    --bg-color: #010409;
}

body {
    background-color: var(--bg-color);
    color: var(--text-color);
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
}
```

Bash/Shell:
```bash
#!/bin/bash
echo "Hello, World!"
for i in {1..5}; do
    echo "Number: $i"
done
```

## Tables

### Basic Table

| Option | Description                                                               |
| ------ | ------------------------------------------------------------------------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default.    |
| ext    | extension to be used for dest files.                                      |

### Right Aligned Columns

| Option |                                                               Description |
| -----: | ------------------------------------------------------------------------: |
|   data | path to data files to supply the data that will be passed into templates. |
| engine |    engine to be used for processing templates. Handlebars is the default. |
|    ext |                                      extension to be used for dest files. |

### Mixed Alignment

| Left Aligned | Center Aligned | Right Aligned |
|:-------------|:--------------:|--------------:|
| Item 1 | Item 2 | Item 3 |
| Data A | Data B | Data C |
| Value X | Value Y | Value Z |

### Table with Various Content

| Feature | Status | Priority | Notes |
|---------|--------|----------|-------|
| Dark High Contrast | ✅ Active | High | Primary theme |
| Light Theme | ⏳ Planned | Medium | Coming soon |
| Comparison Tool | ✅ Complete | High | Working |
| **Bold in table** | *Italic* | `code` | All work! |

## Links

[Basic link text](http://dev.nodeca.com)

[Link with title](http://nodeca.github.io/pica/demo/ "title text!")

[Link to GitHub](https://github.com)

[Relative link](./README.md)

[Reference-style link][ref-link]

Autoconverted link (if linkify enabled): https://github.com/nodeca/pica

Email autolink: <user@example.com>

URL autolink: <https://github.com/ScottKirvan>

[ref-link]: https://github.com "GitHub Homepage"

## Images

### Standard Images

![Minion](https://octodex.github.com/images/minion.png)

![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

### Reference-Style Images

![Alt text][id]

[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"

### Inline Image

GitHub logo: ![GitHub Logo](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)

## GitHub-Specific Features

### Details/Summary (Collapsible Sections)

<details>
<summary>Click to expand</summary>

This content is hidden by default and can be revealed by clicking the summary.

It can contain:
- Lists
- **Formatted text**
- `code blocks`
- And more!

```javascript
console.log("Code in collapsible section");
```

</details>

<details>
<summary>Another collapsible with table</summary>

| Column 1 | Column 2 |
|----------|----------|
| Data 1   | Data 2   |
| Data 3   | Data 4   |

</details>

### Mentions and References (Static Page - Won't Link)

- User mention: @username
- Issue reference: #123
- Commit reference: abc123def

## Special Characters & Entities

### Typographic Replacements

(c) (C) (r) (R) (tm) (TM) (p) (P) +-

Ellipsis: test.. test... test..... test?..... test!....

Multiple punctuation: !!!!!! ???? ,,  -- ---

Smart quotes: "Smartypants, double quotes" and 'single quotes'

### Emoji

Classic markup: :wink: :crush: :cry: :tear: :laughing: :yum:

Direct unicode: ✨ 🎉 🚀 ❤️ 😀 👍

Shortcuts (emoticons): :-) :-( 8-) ;)

### Math-Like Notation

x² + y² = r²

E = mc²

### Subscript & Superscript

Superscript: 19^th^ (if supported)

Subscript: H~2~O (if supported)

HTML fallback: E = mc<sup>2</sup>

HTML fallback: H<sub>2</sub>O

### Special Formatting (Extended Markdown)

++Inserted text++ (if supported)

==Marked text== (if supported)

Keyboard shortcuts: <kbd>Ctrl</kbd>+<kbd>C</kbd>, <kbd>Cmd</kbd>+<kbd>V</kbd>

## Complex Nested Structures

### Lists with Mixed Content

1. Ordered list item with **bold text**
   - Unordered nested item with *italic text*
   - Another nested item with `inline code`
     1. Numbered nested deeper
     2. With more items
        - Mix of all ***bold italic*** and ~~strikethrough~~
        - Code in nested list: `const x = 42;`
2. Back to top level
   > Blockquote in list
   >
   > With multiple paragraphs

### Blockquote with Lists

> ## Heading in blockquote
>
> 1. First item in blockquote
> 2. Second item
>    - Nested unordered
>    - Another nested
>
> Back to blockquote paragraph with **emphasis**.

### Code in Lists

1. Install dependencies:
   ```bash
   npm install
   ```
2. Run the server:
   ```bash
   npm start
   ```
3. Done!

## Footnotes

Footnote 1 link[^first].

Footnote 2 link[^2].

Inline footnote^[Text of inline footnote] definition.

Duplicated footnote reference[^first].

[^first]: Footnote **can have markup**

    and multiple paragraphs.

[^2]: Footnote text.

## Definition Lists

Term 1

:   Definition 1
with lazy continuation.

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

_Compact style:_

Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b

## Abbreviations

This is HTML abbreviation example.

It converts "HTML", but keep intact partial entries like "xxxHTMLyyy" and so on.

*[HTML]: Hyper Text Markup Language

## Custom Containers (Plugin-Dependent)

::: warning
*here be dragons*
:::

## Long Content Test

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.

## Edge Cases & Special Scenarios

### Empty Elements

Empty blockquote:
>

Empty list item:
-
- Item 2

### Escaping

\*Not italic\*

\**Not bold\**

\`Not code\`

### HTML in Markdown

This is <em>inline HTML</em> in markdown.

<div style="color: var(--fgColor-accent, #74b9ff);">
Styled div with CSS custom property
</div>

---

**End of comprehensive test content**

---

_Last updated: 2025-11-20_
