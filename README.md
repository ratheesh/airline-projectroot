# vim-airline-formatting

This is an extension for [vim-airline](https://github.com/bling/vim-airline) that displays:
* the current shiftwidth
* whether or not expandtab is set
* [Pencil's](https://github.com/reedes/vim-pencil) wrap mode (off, soft, hard) 

## Installation

Best Installed using Pathogen, Vundle, Neobundle, or your favorite Vim package manager.

You need to add the following global variable to your vimrc to enable the extension:

    let g:airline#extensions#formatting#enabled = 1

## Customization

The glyphs can be customized:

    " spaces / tabs indicator
    let g:airline#extensions#formatting#space_glyph = '·'
    let g:airline#extensions#formatting#tab_glyph = '→'

    " symbolizes the text body
    let g:airline#extensions#formatting#text_glyph = '≡'

    " wrap/nowrap inidcator (if Pencil isn't found)
    let g:airline#extensions#formatting#wrap_no_pencil = '¶'

## License

MIT License.

