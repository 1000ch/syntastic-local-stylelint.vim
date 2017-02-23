# syntastic-local-stylelint.vim

Prefer local install of stylelint over global install with syntastic

## Usage

Configure your `.vimrc` such as following.

```vim
call dein#add('vim-syntastic/syntastic')
call dein#add('1000ch/syntastic-local-stylelint.vim')
let g:syntastic_css_checkers = ['stylelint']
```

## License

[MIT](https://1000ch.mit-license.org) © [Shogo Sensui](https://github.com/1000ch)
