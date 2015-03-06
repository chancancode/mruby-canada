# Canada for MRuby

![Canadian flag](https://raw.github.com/vanruby/canada/master/canada.png)

It's well known that we have [different conventions](http://programmers.stackexchange.com/questions/1483/do-people-in-non-english-speaking-countries-code-in-english#answer-5576) for programming in Canada. This MRuby gem attempts to make life easier for Canadian MRubyists by integrating these conventions into the Ruby language:

```ruby
% ./mruby/build/host/bin/mirb
mirb - Embeddable Interactive Ruby Shell

> [].empty_eh?
 => true
> [1,2,3].empty_eh?
 => false
> [].respond_to_eh?(:empty_eh?)
 => true
> aboot Object.new
 => "#<Object:0x7f954b808720>"
> raise "something went wrong..."
(mirb):5: I'm sorry, but something went wrong... (RuntimeError)
```

Cool, eh?

## What about performance?

We hand-tuned the gem's performance to keep it in line with everything else in Canada.

## Getting Started

1. Download the source: `git clone git://github.com/chancancode/mruby-canada.git`

2. Install it: `rake compile`

## License

mruby-canada is released under the [MIT License](http://www.opensource.org/licenses/MIT).
