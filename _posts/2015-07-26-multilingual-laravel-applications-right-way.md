---
layout: post
title:  "Multilingual Laravel applications The Right Way"
meta_title: "Multilingual Laravel applications The Right Way"
meta_description: "Linguist is a composer package that provides an easy localization support for the Laravel framework."
date:   2015-07-26 00:00:00
tags: Code
---

The largest problem with multilingual applications in "pretty URL" architecture is routing. By removing the locale slug from the REQUEST_URI we have created the cleanest possible multilingual environment possible.

<!-- more -->

The largest problem with multilingual applications in "pretty URL" architecture is routing.  

<pre><code>http://site.com/about
http://site.com/fr/about
</code></pre>

Both these URLs point to the same controller. The problems worsens when you need to play with URI segments.

<pre><code>Input::segment(1);
</code></pre>

With the URLs above Input returns different results. And that can be a huge problem.

### Adressing the problem

Without Google you could store the locale information inside a session variable. As Google hates duplicate content, this is not an option.

Another approach would be to reroute everything. While the approach works, it is lot of work and tends to get messy. 

To do it **The Right Way** is to remove the locale slug from the REQUEST_URI in public/index.php file:

<pre><code>$pattern = '/^\/(en|fr)\//';
$uri = filter_input(INPUT_SERVER, 'REQUEST_URI', FILTER_SANITIZE_URL);

if (preg_match($pattern, $uri, $matches)) {
    $uri = preg_replace($pattern, '/', $uri);

    $_SERVER['REQUEST_URI'] = $uri;

    define('LOCALE', $matches[1]);
}
</code></pre>

Now the framework sees only the unlocalized URI and locale information is stored inside the LOCALE constant. With the code above you have created the cleanest possible multilingual environment.

I do not want to troll here anyone, but the code above does like 90% most localization packages do.

### Linguist package

[https://github.com/keevitaja/linguist](https://github.com/keevitaja/linguist)

This package removes the locale slug and helps with the URL and anchor generation. Few examples in artisan tinker:

<pre><code>>>> Linguist::workingLocale();
=> "en"

>>> Linguist::url('some/path');
=> "http://localhost/en/some/path"

>>> Linguist::url('some/path', [], true, 'fr');
=> "https://localhost/fr/some/path"

>>> Linguist::route('test.show', [3]);
=> "http://localhost/en/test/3"

>>> LinguistHtml::linkToRoute('test.show', 'Show third test', [3]);
=> "<a href="http://localhost/en/test/3">Show third test</a>"

>>> lnk_to('/', 'Home');
=> "<a href="http://localhost/en">Home</a>"

>>> Config::set('linguist.hide_default', true);
>>> lnk_to('/', 'Home');
=> "<a href="http://localhost">Home</a>"

>>> lnk_to_route('test.show', 'Show third test', [3], ['class' => 'button', 'data-delete']);
=> "<a class="button" data-delete href="http://localhost/en/test/3">Show third test</a>"
</code></pre>

Am i smart or what?












