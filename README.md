# ThesIST

ThesIST (pronounced "desist") is an unofficial Master's thesis template for Instituto Superior Técnico written in Typst.

This template fully meets the official formatting requirements as outlined [here](https://tecnico.ulisboa.pt/files/2021/09/guia-disserta-o-mestrado.pdf), and also attempts to follow most unwritten conventions. Regardless, you can be on the lookout for things you may want to see added.

PIC2 reports with a thesis-like format are also supported, with options to change or hide some parts.

**Please read the "Quick guide" chapter included in this template to get set up. You can keep it as a reference if you want.**

## Prerequisites

If you are just using the Typst web app, you don't need to take any extra steps.

If you want to compile your thesis offline, make sure you have the following font families installed on your computer:

- TeX Gyre Heros

- TeX Gyre Bonum

## FAQ

### Is this template good enough for me to write my thesis with it?

Yes, as long as you are comfortable with writing in Typst for your usecase. Be sure to check the quick guide, and Typst's documentation and online help channels if you need.

The format of the document itself follows the IST rules already, so, unless the rules change, updates will be unrelated to that.

The known breaking changes introduced by any new version will always be registered in its changelog, with instructions on what to change. The changelogs are on [the Releases page](https://github.com/tfachada/thesist/releases).

### My PIC template looks nothing like this one!

Contrary to the thesis itself, the PIC2 doesn't have a universal format or ruleset. Use the template you're given (or port it to Typst yourself) if it's too different from this one. You can then come back to this one when you're writing your thesis document, which will have this format for sure.

### My PIC template looks like this one, but I can't fully replicate it because X.

Take a good look at *all* the setting variables there are in `main.typ`. If none of them changes what you want: first see if you can add the code yourself (for example, a `#pagebreak()` inside one of your sections); if this still doesn't solve it, feel free to open an issue or a pull request.

### Why is so much code imported from this template's package instead of directly editable?

To have a simple interface, in which it isn't hard to find the variable parts. Sometimes the format is rigid, so the formatting code is not always trivial. ThesIST is intended for everyone at IST, so some flexibility was sacrificed in favor of readability. The idea is that even a person who is not so code-minded should find this easier to navigate than the LaTeX template they would normally use.

If you think something isn't editable by the user but should, feel free to open an issue or a pull request.

## Final remarks

This template is not necessarily a finished product. Contributions are welcome!

Also thanks to the Typst online community members for the help in some of the functionalities, and for the extensions used here.
