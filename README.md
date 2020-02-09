# vim-swift

This is the repository for a new Swift plugin for Vim that aims to match Xcode in its level of detail and quality of highlighting.

![vim-swift screenshot](https://raw.githubusercontent.com/arzg/resources/master/vim-swift.png)

The colourscheme used in this screenshot is [vim-colors-xcode](https://github.com/arzg/vim-colors-xcode).

## Options

- `g:swiftHighlightIdents`: defaults to `0`, set to `1` to highlight user identifiers. This is off by default because Xcode doesn’t highlight as many identifiers as this does, and I personally find the extra colours overwhelming.

## Roadmap

- [ ] Indentation
- [ ] Highlight enum case definitions
- [ ] Highlight string interpolation delimiters
- [ ] Allow all Swift syntax groups in string interpolations
