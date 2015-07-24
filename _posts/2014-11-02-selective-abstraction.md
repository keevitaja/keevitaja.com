---
layout: post
title:  "Selective abstraction does not make sense"
meta_title: "Selective abstraction does not make sense"
meta_description: ""
date:   2014-11-02 00:00:00
tags: Code
---

In Laravel community lot of people use Repository pattern by Taylor Otwell and at the same time they have no problem with using third party packages tightly coupled to their codebase. This kind of selective abstraction makes no sense!

<!-- more -->

<blockquote>
    Edited on july 2015 <br><br>
    50% of this is total crap. I will rewrite this post as soon as possible.
</blockquote>>

In Laravel community lot of people use [Repository pattern](http://ryantablada.com/post/the-repository-pattern-in-action) by [Taylor Otwell](http://taylorotwell.com/). At the same time they have no problem with using third party packages tightly coupled to their codebase. This kind of selective abstraction makes no sense!

### The origin of Repository pattern in Laravel.

Of course Taylor did not come up with the pattern itself. In his book “[From Apprentice To Artisan](https://leanpub.com/laravel)” he talked about it and many people figured it is the right way to do things in [Laravel](http://laravel.com/). Did Taylor really tell us to use this pattern with each application? I do not think so. Most, if not all, coding patterns are optional. To use different patterns in our projects we have to select them according to the projects scale and the application.

### Why should we consider the Repository pattern?

Generally abstraction is a good practice and so is the Repository pattern if we are working on a large scale project. The reason to have it, is simple. One day there might be a need to swap out the [Eloquent](http://laravel.com/docs/4.2/eloquent) with another database driver. If our database layer is abstracted the swapping process can go with less pain.

But how likely will we need to swap out the Eloquent? Eloquent supports many database services, including [MySQL](http://www.mysql.com/) and [PostgreSQL](http://www.postgresql.org/). Perhaps we would need to swap out Eloquent if we want to use [MongoDB](http://www.mongodb.org/) which works well with [hierarchical data](http://en.wikipedia.org/wiki/Hierarchical_database_model). In most cases we can stick happily with Eloquent.

### Selective abstraction does not make sense!

I have seen too many times the following situation. Developer is using Repositories with [interface binding](http://laravel.com/docs/4.2/ioc). He is also using some third party packages, like image manipulator, which are not abstracted in any way. Does this make any sense?

And when i ask this developer why is he using Repositories, i usually do not get a straight answer. Perhaps some gibberish about Repositories being a good practice or something. Also i have seen projects that use Repositories returning the Eloquent object.

If your Repository returns Eloquent object, your code is still tightly coupled to Eloquent driver and you have accomplished nothing!

**This is just stupid!**

Perhaps it would make sense to abstract everything and prepare for everything. To use only Repositories is 100% senseless!







