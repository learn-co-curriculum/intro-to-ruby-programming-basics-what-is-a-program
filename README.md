# What is a Program?

## Learning Goals:

- Describe what a program is
- Look some examples of programs
- List and describe the words that compose code: keywords, barewords, and data
- Recognize how programs adhere to a particular flow
- Identify when and why errors occur in programming
- Fix an error

## Introduction

The first thing to know about programming is that it's awesome. The second thing
you probably need to know about programming is what a program actually is.
Programs are often thought of as a bunch of zeros and ones and weird syntax.
However, programs are actually way more accessible, runnable and understandable
than they may seem at first. In this lesson, we're going to discuss what programs
are, look at some examples, and run a program ourselves.

## What is a Program?

All programs are just files on your computer filled with text. That text has a
special syntax we call code. Programs can be written in many different
programming languages, each with their own syntax defining what you are allowed
to write and how.

Programs are converted to [machine code][machine] so that the computer can
understand it. Depending on the language that a program is written in, it may
need to be [compiled][compiled] to machine code prior to being run. Some
languages, like Ruby, can be interpreted and converted to machine code at run
time.

## Examples of Programs

In this lesson is an example of a [compiled][compiled] program, a file named
`hello`. The file contents of `hello` won't make any sense to us, but it is
possible to run this file. If you have cloned this lesson to your local
environment or are using the Learn IDE, type `hello` in the command line from
this lesson's main folder to run the program (**Note:** the in-browser IDE will
not be able to run this file). Because `hello` is already compiled, we can just
type the name of the file and our computers will be able to execute:

```bash
// ♥ hello


Hello World!
```

`hello` is a program that prints out 'Hello World!' in the command line.

Alongside `hello` is a Ruby file, `a_ruby_program.rb`. If we open this file, we
can see it is at least made of words we can read, even if we don't know what they
are doing just yet:

```ruby
puts "This is a program"
puts "Programs are interpreted at runtime."
puts "Which means even though I'm writing this Tue Jan 17 2012 8:36am"
puts "the time now is "+ Time.now.to_s

puts "Programs have flow."
puts "Which means that you see this first"
puts "and this next."

puts "Lines of code are executed linearly, that's flow."
puts "First come, first served."

puts "Programs are composed of basically three things:"

puts "A language's keywords, like 'if' or 'end' (approximately 43)."
puts "Literal pieces of data like this very sentence (or String)."
puts "Finally, barewords, or variables, that are set equal to things."

puts "Anything that isn't one of those will cause an error."

see
```

Again, since Ruby can be interpreted at run time, we don't need to deal with
compiling code then running the resulting compiled file. Instead, we use an
interpreter that will read and translate the contents of `a_ruby_program.rb`,
turning it into machine code for our computers to understand and execute.

## Running a Ruby Program

Once you have a Ruby program as a file, you can run it through the Ruby
interpreter to execute it. Your Ruby interpreter is accessible via the `ruby`
command in your command line (assuming you have Ruby installed correctly).

When you type in `ruby -v` you should see the version of Ruby you are currently
running. For example:

```bash
ruby -v
ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin18]
```

To run a Ruby program that was stored in `some-program.rb` you would simply
type: `ruby some-program.rb` from the same folder. In our case, if you are in
the main folder of this lesson, from the command line, you can run
`a_ruby_program.rb` by typing `ruby a_ruby_program.rb`:

```
// ♥ ruby a_ruby_program.rb
This is a program
Programs are interpreted at runtime.
Which means even though I'm writing this Tue Jan 17 2012 8:36am
the time now is 2019-03-13 15:11:11 -0400
Programs have flow.
Which means that you see this first
and this next.
Lines of code are executed linearly, that's flow.
First come, first served.
Programs are composed of basically three things:
A language's keywords, like 'if' or 'end' (approximately 43).
Literal pieces of data like this very sentence (or String).
Finally, barewords, or variables, that are set equal to things.
Anything that isn't one of those will cause an error.
Traceback (most recent call last):
a_ruby_program.rb:23:in `<main>`: undefined local variable or method `see` for main:Object (NameError)
Did you mean?  sleep
```

Although the original `a_ruby_program.rb` file was written in 2012, if you run
the program now, you'll see that 4th printed line will include the _current
time_. How does this happen? Well, if we look back at the Ruby file:

```ruby
puts "This is a program"
puts "Programs are interpreted at runtime."
puts "Which means even though I'm writing this Tue Jan 17 2012 8:36am"
puts "the time now is "+ Time.now.to_s
...
```

These first four lines in the file contain the same text that is first printed
when we _run_ the program. The one difference is that while the program prints
out the current time when run, the _file_ contains something else,
`Time.now.to_s`. This bit of code is Ruby syntax for _'get the current time and
convert it into some text.'_ Because `a_ruby_program.rb` is interpreted at run
time, the result of `Time.now.to_s` will always be different depending on _when_
the program is run.

## Words in a Program

Every word and character in a program has to be valid code for the Ruby
language. Basically, every word can be one of three possible things:

1. A Ruby keyword, something that's part of the ruby language
2. Literal data, things like ["Strings"][string] and [Integers][integer] like 1 or 2
3. Barewords _we_ create and define

Anything that isn't one of those is invalid and the Ruby interpreter will throw
an **error**.

Looking back at the file `a_ruby_program.rb`, we can see examples of these three
things:

```ruby
puts "This is a program"
```

The word `puts` is a Ruby keyword, a built in Ruby method, short for _out**put
s**tring_. We use `puts` to print out whatever data is provided _just after_. In
this case, what follows `puts` is the string `"This is a program"`. When
`a_ruby_program.rb` is run, we can see the results of this statement printed at
the very beginning:

```
// ♥ ruby a_ruby_program.rb
This is a program
...
```

Writing the statement `puts "This is a program"` in our `a_ruby_program.rb` file
results in `This is a program` being printed when the program is run. The Ruby
interpreter understands what to do when it gets to a `puts` statement. It also
understands that anything wrapped in quotations, like `"This is a program"`
should be treated as a [String][string].

When we run `a_ruby_program.rb`, we see that at the very end, something happens:

```
...
Programs are composed of basically three things:
A language's keywords, like 'if' or 'end' (approximately 43).
Literal pieces of data like this very sentence (or String).
Finally, barewords, or variables, that are set equal to things.
Anything that isn't one of those will cause an error.
Traceback (most recent call last):
a_ruby_program.rb:23:in '<main>': undefined local variable or method 'see' for main:Object (NameError)
Did you mean?  sleep
```

Those last lines, `a_ruby_program.rb:23:in '<main>': undefined local variable or method 'see' for main:Object (NameError)` are telling us that there
was an error caused by an unrecognized word in the source of our program. More
specifically, an `undefined local variable or method` on line 23 of the file.

On line 23 of `a_ruby_program.rb`, we find the problem:

```ruby
see
```

`see` is an example of a _bareword_. It isn't part of Ruby's own keywords and
isn't a piece of data like a string or a number. The error we're seeing is
because _we_ haven't defined what `see` means. The Ruby interpreter gets to this
line, and because `see` is undefined, doesn't understand what to do. It produces
an error, reporting what happened.

Errors are great, because they tell us what we need to fix. We'll soon learn all
about reading error messages. The main thing to take away here is that all
programs have a defined syntax and rules for how they are run. In Ruby, we use a
combination of keywords, data and barewords to construct programs.

With just these building blocks, we can create all kinds of programs! Ruby
programs can be as simple as printing out text and the current time. They can
also be incredibly complex and powerful.

## Flow

Programs like `a_ruby_program.rb` have a _flow_. That is to say, each statement
in the program is executed in order, one after the other, from the top of the
file to the bottom. Notice that when `a_ruby_program.rb` is run, the Ruby
interpreter is working just fine dealing with all the `puts` statements. It
prints them from the first,

```ruby
puts "This is a program"
```

...to the last,

```ruby
puts "Anything that isn't one of those will cause an error."
```

During this process, it is only when Ruby encounters something it isn't able to
handle that it produces an error. The Ruby interpreter halts there. If anything
is written _after_ `see` in `a_ruby_program.rb`, the interpreter will never get
to it. We would need to fix the error first to allow for the interpreter to
fully finish reading the file.

## Fixing Our Ruby Program

Now that we have a better sense of how to _read_ a Ruby program, its time to
practice editing a program. In this lesson, there is one test that must be
passed to continue on to the next lesson: fix the error in `a_ruby_program.rb`.

As we've seen, we _know_ what the cause of the error is: the bareword `see` is
undefined. We don't have any use for this bareword, so the easiest way to
resolve our error is to just remove `see` from the file.

## Edit and Save the Ruby File

Open up `a_ruby_program.rb`. At the bottom of the file, delete `see`. This
should fix our issue, but before we run the program again, we need to _save_.

Anytime you make changes to a file (like the one you've just made) you need to
save the file so your changes are preserved. If you forget to save the file
before you run your tests, the last saved version of the file will be run --
**without your changes** -- and this can be very confusing! In this case, if you
forget to save, the program will still produce an error when run.

Always remember to save the file every time you make changes by selecting `Save`
from the `File` menu in your editor.

## Testing Your Work

To run the test in this lesson and see if you have passed, type `learn` into the
command line and press `enter`/`return`. If you have successfully fixed the
problem, when `learn` is run, you should see the following print out:

```
./a_ruby_program.rb
This is a program
Programs are interpreted at runtime.
Which means even though I'm writing this Tue Jan 17 2012 8:36am
the time now is 2019-03-15 07:57:27 -0400
Programs have flow.
Which means that you see this first
and this next.
Lines of code are executed linearly, that's flow.
First come, first served.
Programs are composed of basically three things:
A language's keywords, like 'if' or 'end' (approximately 43).
Literal pieces of data like this very sentence (or String).
Finally, barewords, or variables, that are set equal to things.
Anything that isn't one of those will cause an error.
  does not raise an error

Finished in 0.00781 seconds (files took 0.19431 seconds to load)
1 example, 0 failures
```

## Submit a Learn Lab

With a working solution, you're ready to move on to the next lesson. Submit
your work by typing `learn submit` into your terminal, then click "Next
Lesson" to move forward when you are ready.

## Conclusion

Understanding the complexity of programs can be intimidating at first glance.
However, programs don't have to be mysterious black boxes that magically work.
With a little context and knowledge of a programming language's syntax, we are
able to not only read code in a program but also make edits to it!

Ruby syntax is designed to be easy to read and understand. When something
doesn't work, Ruby tries its best to produce informative errors. It was designed
to make programmers happy. For these reasons, Ruby is a great language to start
with on the journey to becoming a programmer.

## Resources

[Video Lecture - What is a Program?][video]

[compiled]: http://en.wikipedia.org/wiki/Compiled_language
[interpreted]: http://en.wikipedia.org/wiki/Interpreted_language
[machine]: https://en.wikipedia.org/wiki/Machine_code
[video]: http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-what-is-a-program/ruby-lecture-what-is-a-program.mp4
[string]: https://ruby-doc.org/core-2.6.0.preview2/String.html
[integer]: https://ruby-doc.org/core-2.6/Integer.html

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-lecture-intro-what-is-a-program'>What is a Program?</a> on Learn.co and start learning to code for free.</p>
