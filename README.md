# nvchad-config
 This is my nvchad config. I've been enjoying using vim. I interestingly have not found the blazingly fast productivity increases that were promised, but am sticking with nvim because I'm having a lot of fun. and why else do anything? 

## My Changes:
- [x] Move nvim-tree to the right
    - I do this for every editor, I find that since I read left to right, I like the center (the code I'm working on is at the center not the top) and the right of my screen to be as distraction free as to let me focus on the work in front of me. Moving nvim-tree to the right helps me focus on the actual text and feels more aesthetically clean and out of the way.
    - When you do that, tabufline expects nvim-tree to be on the left, and when opening your file tree, it adds padding accordingly, which I needed to fix
- [x] Fix nvim-tree LSP diagnostic and save status icons
- [ ] Make the lsp code snippet selector work as tab as the select key, and arrow keys as navigator. This would then match VSCode which would make the back and forth transition smoother.Although I may look into just changing the VSCode version because I like not having to move my hand down to the arrow keys to make a change, even if the more common action of selecting a snipping is faster with tab then enter
- [ ] Figure out a solution for ctrl + shift + arrow selections. The main reason I've found nvim not as fast as VSCode is that I've grown up already using standardized text shortcuts. Any text software has ctrl and ctrl shift movement, which speeds up workflows immensely. Visual mode is just so much slower. I'm wondering if I can amp <C+Sh> to put me into visual mode automatically from insert mode perhaps
- [ ]
