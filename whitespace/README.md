# shi-mo/yukicoder/whitespace
My Whitespace compiler (!!incomplete!!).

## Usage
```
$ cat XXXX.as | ruby as2st.rb | ruby st2ws.rb | pbcopy
```

## Reference
<dl>
  <dt>Whitespace tutorial</dt>
  <dd>http://compsoc.dur.ac.uk/whitespace/tutorial.html</dd>
</dl>

## Ruby Scripts
### as2st.rb
Compile my assembler (*.as) into ST[LF] expression.

### st2ws.rb
Comvert ST[LF] expression into Whitespace ([Space][Tab][LF]).

## My Assembler Syntax
View code in as2st.rb
