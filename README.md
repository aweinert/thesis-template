# A Beautify Thesis Template that Guides the Reader

[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/80x15.png)](http://creativecommons.org/licenses/by/4.0/)

This template strives to be as beautiful as possible while supporting the reader visually. It was designed for PhD theses and can be used for Bachelor/Master theses as well. Some parts of this template are specific to Computer Science at Saarland University, though. However, these parts can be removed easily.

# Why should I bother?

This template utilizes margin notes quite intensely. The goal of these notes is to remedy the annoyance one feels when reading statements like "recall Definition 2" or "as we have seen in Section 2.3" followed by scrolling through the document trying to find the right page. This template defines cross reference statements for such occasions that mark the reference in the text with an arrow. In addition, the margin note contains the corresponding page of the definition/theorem/whatever. No more annoying flicking through the entire document!

In addition to that, when introducing or defining a term, the margin note contains a short indicator thereof. So scanning a page is faster than ever!

Since the original author of the template and myself are computer scientists, this template contains some commonly used maths and cs related macros already such as `\twopartdef` and complexity classes. Check them out in the `preamble.tex` file.

Note: The collection is not quite extensive, yet. I plan to copy the creme de la creme of my collection over Soon™.

Lastly, the template is just beautiful! Yes, I know, that's subjective, shut up. ;-) 

# How to Use
For the most part, it's just a LaTeX template. If you know how to tex, you're good to go. Otherwise, go learn it. There's like a bazillion of tutorials out there, most of them awful. Learning by doing is the key here.

When defining a section, rather than using `label{sec:something)`, use `seclabel(something)`. This will automatically create a label prefixed with `sec:`. When you want to refer to it, use either `secref(something)` for a plain old reference that evaluates to `Section XY`, or `Csecref(something)` to create a cross reference with the respective margin note. Even though it's tempting, use cross references sparsely. They do impact the flow of reading — not immensely, but a bit nonetheless. As a rule of thumb, if the definition is in a different chapter or at least 5 pages away, consider using a cross reference.
The same kind of label and (cross) reference macros exist for theorems, examples, etc. 

Note: In the future I might change this slightly by using `cleverref` internally. This will probably change the macros as well.

When you introduce a new term in a sentence, one usually puts it in an emphasis, such as `This is called a \emph{well-formed} specification.` With this template, use the `\introterm` macro that takes can be starred and takes one optional and one mandatory argument. The mandatory argument is the term you introduce as it occurs in the sentence, emphasized just as when using `\emph`. The optional argument is the stand-alone term you introduce. This term will then be printed in the margin note. In the example above, the noun of the property is "Well-Formedness", so that's what you pass to the optional argument. Lastly, the introduced term in the margin note will be preceded by a bold-face "Def.". If this is undesired, you can star the macro, i.e., use `This is called a \introterm*[Well-Formedness]{well-formed} specification.`

# Configuration
Check out the [`config.tex`]("https://github.com/Schwenger/Thesis-Template/blob/master/config.tex") file. It contains some essential configurations you need to adapt, such as the author name, reviewers, some options for the title page and whatnot. 

There's a couple of boolean switches that should be more or less self-explanatory. I'll make sure this README will never by outdated in this regard by not even attempting to list and explain them here. Just play around with them, go nuts, worst that could happen is that you lose all your progress or your laptop overheats irrecoverably, I dunno `¯\_(ツ)_/¯`.

# Attribution
The template was originally created by [Alexander Weinert]("https://github.com/aweinert"), thanks so much for sharing!

I adapted the template in a couple of ways: 
* It has some Saarland University-specific features such as our great logo on the front page and hints on the PhD thesis requirements (Last update: 2019).
* Some styling of section headers, definition environments etc.
* There are some interesting macros that work well with the setup created by Alex.

Feel free to use and adapt this template for your own work, as long as you credit your use of this template.
The easiest way is to add a line in the acknowledgments referring to the contributors of either Alex' original repository or my fork thereof. 
