# nvchad-config
 This is my nvchad config. I've been enjoying using vim. I interestingly have not found the blazingly fast productivity increases that were promised, but am sticking with nvim because I'm having a lot of fun. and why else do anything? 

## TODOs:
Here is a list of my TODOs for my NVIM config. Each point may be followed with a link to the resource that helped me solve the problem/task
- [x] Move nvim-tree to the right
    - I do this for every editor, I find that since I read left to right, I like the center (the code I'm working on is at the center not the top) and the right of my screen to be as distraction free as to let me focus on the work in front of me. Moving nvim-tree to the right helps me focus on the actual text and feels more aesthetically clean and out of the way.
    - When you do that, tabufline expects nvim-tree to be on the left, and when opening your file tree, it adds padding accordingly, which I needed to fix
- [x] Fix nvim-tree LSP diagnostic and save status icons
- [x] WSL is buggy with nvim/system clipboard integration  
https://lloydrochester.com/post/vim/wsl-neovim-copy-paste/  
- [x] Make the lsp code snippet selector work as tab as the select key, and arrow keys as navigator. This would then match VSCode which would make the back and forth transition smoother.Although I may look into just changing the VSCode version because I like not having to move my hand down to the arrow keys to make a change, even if the more common action of selecting a snipping is faster with tab then enter
    - turns out I like the NVIM pattern way better and have changed my VSCode settins 
- [x] Figure out a solution for ctrl + shift + arrow selections. The main reason I've found nvim not as fast as VSCode is that I've grown up already using standardized text shortcuts. Any text software has ctrl and ctrl shift movement, which speeds up workflows immensely. Visual mode is just so much slower. I'm wondering if I can amp <C+Sh> to put me into visual mode automatically from insert mode perhaps
    - turns out the vim community thinks i'm a bum if i do this. might revisit but will am getting used to vim bindings anyways
- [x] fix `failed to run 'config' for telescope.nvim [...] 'fzf' doesn't exist
    - solved this by [going to `~/.local/share/nvim/lazy/telescope-fzf-native.nvim/` and then running the make command](https://stackoverflow.com/questions/77435038/what-did-i-do-wrong-with-my-neovim-telescope-config#comment137385697_77442531)
- [x] control right arrow goes to next line instead of end of line. that's whack
    - i found a fix but have found this to be helpful. I often want to go to the start of the next line. `<C-a>` lets me go to the end anyways
- [ ] For some reason the way putting in a quotation mark exits out and doesn't create two. Or a bracket or anything. A semi colon from snippets creates two semi colons. Which is bloody annoying. 
- [x] Not sure what I mean with the above todo but I've added surrounded quotation marks. Syntax is a bit wonky so I've added a section in my docs below
- [x] sticky block. The function or class you are working in can't be scrolled past  
https://github.com/nvim-treesitter/nvim-treesitter-context  
- [ ] I compelted sticky headers but everytime I open nvim it gives me an error. Still works tho
https://github.com/nvim-treesitter/nvim-treesitter-context/issues/549
- [x] roll up blocks
- [ ] <C-w> to close tab? frame? buffer? window?
- [ ] spell check

## Tips
### nvim-surround
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
### fold
<z-o> opens fold at cursor
<z-shift-o> opens all folds at cursor
<z-c> close fold at cursor
<z-shift-c> close all folds at cursor
### Normal Mode
`<I>` - Jumped to start of line in insert mode
`<A>` - Jumped to end of line in insert mode
`<o>` - Creates new line underneath current line and jumps to it in insert mode
`<C-o>` - jumps to last jump point 
`<C-y>` - move the screen up one line at a time
`<C-e>` - move the screen down one line at a time
`<z-z>` - move the line to the center of the screen
`<I>` - Jumped to start of line in insert mode  
`<A>` - Jumped to end of line in insert mode  
`<o>` - Creates new line underneath current line and jumps to it in insert mode  
`<C-o>` - jumps to last jump point  
`<C-y>` - move the screen up one line at a time  
`<C-e>` - move the screen down one line at a time  
`<z-z>` - move the line to the center of the screen  
### File Tree
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
