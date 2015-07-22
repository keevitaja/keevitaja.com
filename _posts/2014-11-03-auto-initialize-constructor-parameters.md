---
layout: post
title:  "How to auto-initialize constructor parameters in Sublime Text 3"
meta_title: "How to auto-initialize constructor parameters in Sublime Text 3"
meta_description: "Tutorial on how to auto-initialize constructor parameters in Sublime Text 3"
date:   2014-11-03 00:00:00
tags: Tech
---

Have you ever wondered, if it is possible to auto-initialize the constructor parameters in Sublime Text as it can be done with PhpStorm? Wonder no more, because i have a perfect solution in the form of a macro and key binding.

<!-- more -->

Have you ever wondered, if it is possible to auto-initialize the constructor parameters in [Sublime Text](http://www.sublimetext.com/) as it can be done with [PhpStorm](https://www.jetbrains.com/phpstorm/)? Wonder no more, because i have a perfect solution in the form of a macro and keymap.

[Download the initialization macro](https://gist.github.com/keevitaja/94ec7edcb1322d3a44bb)

Place the macro under the Sublime User folder. In [Ubuntu](http://www.ubuntu.com/) the correct path is:

<pre><code>~/.config/sublime-text-3/Packages/User
</code></pre>

If you do not know the right path, click *Perferences > Browse packages* in sublime menu and packages folder should open.

Store the key binding in the default user keymap file.

<pre><code>{ 
    "keys": ["ctrl+i"], 
    "command": "run_macro_file", 
    "args": {"file": "res://Packages/User/initialize_properties.sublime-macro"} 
}
</code></pre>

Place your cursor on the parameter inside the constructor and press ctrl+i. If everything is set correctly, you should see the same result as in the example below:

<pre><code>// before
public function __construct($property)
{
}

// after ctrl+i
protected $property;

public function __construct($property)
{
	$this->property = $property;
}
</code></pre>

You have to initialize each field as macro cannot do them all in one swing.

### How did i come up with this?

With trial and error. Lot of help came from the default keymap file. Also i googled for some example macros and took it from there. Sublime has this [*record macro*](http://sublimetext.info/docs/en/extensibility/macros.html) feature, but it does not work. In my case it recorded something totally different from what i was doing.

I hope this is helping you in your quest to be a faster coder. If you have comments or addition information feel free to leave them below!

