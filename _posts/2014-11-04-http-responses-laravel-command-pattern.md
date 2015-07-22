---
layout: post
title:  "How to handle HTTP responses in Laravel using Command Pattern"
meta_title: "How to handle HTTP responses in Laravel using Command Pattern"
meta_description: "Tutorial on how to handle HTTP responses in Laravel using Command Pattern."
date:   2014-11-04 00:00:00
tags: Code
---

There are many ways to handle the HTTP responses. It all comes down to a personal preference. One cool way to go is a solution where we use a class constant as the status from the Command Bus. Then we select the correct response using the status and return it.

<!-- more -->

There are many ways to handle the [HTTP responses](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes). It all comes down to a personal preference. One cool way to go is a solution where we use a [class constant](http://php.net/manual/en/language.oop5.constants.php) as the status from the [Command Bus](https://laracasts.com/series/commands-and-domain-events/episodes/2). Then we select the correct response using the status and return it.  

The benefit of taking this approach is highly readable code which gives us more flexibility than just using a boolean or a string.

<blockquote>
    The following solution can also be used without the Command Pattern. For the example a Service may return this type of status!
</blockquote>

The goal is to store the status as a constant inside a dedicated class. Class constant is not required to have a value, but it makes sense to assign [i18n](http://laravel.com/docs/master/localization) slug to it. We will see the huge benefit in the Controller class!

<pre><code>class DrinkBeerCommandStatus {

    const BOTTLE_EMPTY = 'responses.bottle.empty';
    const SUBJECT_DRUNK = 'responses.subject.drunk';
    const SNACKS_MISSING = 'responses.snacks.missing';
}
</code></pre>

In the Command Handler we do our tasks, fire events and finally return the appropriate status.

<pre><code>class DrinkBeerCommandHandler {

    public function handle($command)
    {
        try
        {
            $this->drink($command->subject);
        }
        catch (BottleException $e)
        {
            return DrinkBeerCommandStatus::BOTTLE_EMPTY;
        }
        catch (FoodException $e)
        {
            return DrinkBeerCommandStatus::SNACKS_MISSING;
        }
        
        return DrinkBeerCommandStatus::SUBJECT_DRUNK;
    }
}
</code></pre>

In each case we get the correct status from the handler executed by the Command Bus. Again there are many ways how to proceed, but using the status inside a switch statement gives us the maximum amount of benefit we can get!

<pre><code>class DrinkingController {

    public function drink()
    {
        $status = $this->commandBus->execute($command);

        switch ($status)
        {
            case DrinkBeerCommandStatus::BOTTLE_EMPTY:
            case DrinkBeerCommandStatus::SNACKS_MISSING:
                return redirect('seek')->withMessage(trans($status));
            case DrinkBeerCommandStatus::SUBJECT_DRUN:
                return redirect('sleep');

        }
    }
}
</code></pre>

Using a class constant as the status with a i18n slug assigned to it, gives us huge flexibility with highly readable code. There are no comments needed! If the bottle was empty or there were no snacks, we need to seek for new resources. If we drank lot of beer it is time to sleep!

The pseudo code above uses Laravel 5 helpers.