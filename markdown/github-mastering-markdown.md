It's very easy to make some words __bold__ and other words _italic_ with markdown. You can even [link to Google!](http://google.com)

Sometimes you want numbered lists:
1. One
2. Two
3. Three

Sometimes you want bullet points:
* Start a line with a star
* Profit!

Alternatively,
- Dashes work just as well
- And if you have sub points, put two spaces before the dash or star:
    + Like this
    + and this

If you want to embed images, this is how you do it:
![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)

# Structured documents

Sometimes it's useful to have different levels of headings to structure your documents. Start lines with a `#` to create headings. 
Multiple `##` in a row denote smaller heading sizes.

### This is a third-tier heading

You can use one `#` all the way up to `######` six for different heading sizes.

If you'd like to quote someone, use the > character before the line:

> Coffee. The finest organic suspension ever devised... I beat the borg with it.
> - Captain Janeway

There are many different ways to style code with GitHub's markdown. If you have inline code blocks, wrap them in backticks: `var example = true`. If you've got a longer block of code, you can indent with four spaces:

    if isAwesome then true

GitHub also supports something called code fencing, which allows for multiple lines without indention:

```
if is_awesome {
    true
}
```

And if you'd like to use syntax highlighting, include the language:

```python
if isAwesome:
    return True
```

GitHub supports many extras in Markdown that help you reference and link to people. If you ever want to direct a comment at someone, you can prefix their name with an @ symbol: Hey @kneath - love your sweater!

But I have to admit, tasks like lists are my favourite:

- [x] This is a complete item
- [ ] This is an incomplete item

And, of course emoji! :sparkles: :camel: :boom:

*This text will be italic*
_this will also be italic_

**This text will be bold**
__this will also be bold__

*You **can** combine them*

# Tables

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

Any word wrapped with two tildes (like ~~this~~) will appear crossed out.
