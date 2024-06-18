# Welcome To Mini

Mini lets you add interactivity to your web sites and web apps without leaving your HTML.

## Getting Started

To add Mini to your project, simply save [this file](https://cdn.mini-js.com/1.0.15.js) and load it in the head of your page.

```
<script src="/mini-1.0.15.js" ></script>
```

Alternatively you can load Mini directly from our CDN>

```
<script src="/mini-1.0.15.js" ></script>
```

---

# Learn Mini in Three Steps

<br/>

### 1. Prefix your html attributes with `:` to let them evaluate javascript

For example, for form inputs, use `:value` to set an input's `value`. 

```html
<input type="text" :value="`The date is `+new Date()" />
```
This will display this ⤵

<input type="text" :value="`The date is: `+new Date()" class="rounded px-3 py-2 border-2 border-gray-200 w-full" />

- To set an element's `class`, use the `:class` attribute
- To set an element's `style`, use the `:style` attribute
- And so on...


### 2. Use vanilla javascript variables to manage state

Variables default to the global namespace, so you can define your data anywhere in your page and use it later.

```html
<script>
  name="Michael Scott"
</script>
<input type="text" :value="name" />
```
This will display this ⤵

<script>
  name="Michael Scott"
</script>
<input type="text" :value="name" class="rounded px-3 py-2 border-2 border-gray-200 w-full">

<hr class="my-6" />

### 3. Use events to respond to user interactions.

Mini extends the browser's native events with shorthand attributes like `:click`, `:change`, `:press`, `:clickout` and a few others. For example, you can use the`:click` attribute to respond to elements being clicked

```html
<button :click="alert('hey)" />
```

<button :click="alert('hey')" class="bg-gray-100 rounded-full px-3 py-1 hover:bg-gray-200">Click Me</button>

### Combine these patterns 👆 for infinite possibilities

Being able to set state using javascript variables, update state in response to interactions, and mutate the dom depending on the state, unlocks a lot of common UI patterns. 

**Click a button to toggle hidden content**

```html
<button :click="showDiv=!showDiv" :text="showDiv ? 'Click To Hide' : 'Click To Show'"></button>
<div :class="showDiv ? 'block' : 'hidden' " >Put content here</div>
```


<button class="rounded-full bg-gray-100 px-4 py-2" :click="showDiv=!showDiv" :text="showDiv ? 'Click To Hide' : 'Click To Show'"></button>
<div class="rounded py-2 px-3 bg-green-500 text-white" :class="showDiv ? 'block' : 'hidden' " >Put content here</div>

<hr class="my-6" />

# More Mini

Now that you've learned the basics, here are a few more tricks you can use.

### Use `:change` to watch form fields

You can use the `:change` attribute to get the value of form inputs in real time. (This example also uses the `this` keyword, see the next section for details).

```html
<input type="text" :change="firstName=this.value" />
<span :text="`Your first name is: ` + firstName">
```
<div class="grid grid-cols-2">
  <div>
    <input type="text" :change="firstName=this.value" placeholder="Enter your first name" class="rounded px-3 py-2 border-2 border-gray-200 w-full"/>
  </div>
  <div class="flex items-center px-3">
    <span> Your first name is: </span>
    <span :text="firstName" >
  </div>
</div>


<hr class="my-6" />

### Use `this.value` to get the value of an input

You can access the current element using `this`. This is useful when you want to, for example, get the value of an input as it changes.

```html
<input type="text" :change="console.log(this.value)" />
```

<div class="grid grid-cols-2">
  <div>
    <input type="text" :change="console.log(this.value)" placeholder="Enter your first name" class="rounded px-3 py-2 border-2 border-gray-200 w-full"/>
  </div>
</div>


<hr class="my-6" />

### Use `:text` to set the inner text of an element


```html
<span :text="`My lucky number is: `+Math.floor(Math.random() * 100) + 1;" />
```

This will display: <span :text="`My lucky number is: `+Math.floor(Math.random() * 100) + 1;" class="font-bold" />

### Use `event` to get the current event

You can also access the current event with the `event` keyword.

```html
<button :click="console.log(event)">Click Me</button>
```

<button :click="console.log(event);alert('Open your console to see the event')" class="bg-gray-100 rounded-full px-3 py-1 hover:bg-gray-200">Click Me</button>

# Scoping

Often we want to group together elements which draw from the same state. In that case, we can use the `scope` keyword. To do this, we prefix our variables with `scope.`, and add the `:scope` attribute to the HTML element that holds the top-level state. 

```html

<div id="accordion" :scope>
  <section>
    <button :click="scope.activeSection = 'about'">
      About Us
    </button>
    <div :class="scope.activeSection =='about' ? 'block' : 'hidden'">
      Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
      eirmod.
    </div>
  </section>
  <section>
    <button :click="scope.activeSection = 'team'">
      Team
    </button>
    <div :class="scope.activeSection =='team' ? 'block' : 'hidden'">
      Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
      eirmod.
    </div>
  </section>
</div>

```


### Use the full power of javascript

We generally recommend using mini for lightweight interactivity (hence the name). But our magic attributes accept full ES6 javascript, so you can technically do whatever you want in there.

**If else statements**

```html
<div
  :class="if (selectedTab === 'when') {
            'bg-white shadow-lg'
          } else {
            'hover:bg-gray-300'
          }"
></div>
```

**Nested Ternaries**

```html
<div
  :class="(selectedTab === 'When' ? 'bg-white shadow-lg' : 'hover:bg-gray-300')
          (whenSelectedTab === 'Dates' ? 'hidden' : '')"
></div>
```


**Native Events**

```html
<button :click="console.log('click')">Click Me</button>
<input :change="this.value = this.value.toUpperCase()" />

```


--- 

<br/>


### Keyboard Events

For keyboard events, you can listen to them using `:keyup`, `:keydown`, and `:keypress`:

```html
<input type="text" :keyup="console.log(event)" />
```

#### Key Modifiers

You can also use key modifiers to listen to specific keys. Modifiers are appended to the event name using a dot:

```html
<input
  type="text"
  :keyup.up="console.log('keyup.up')"
  :keydown.enter="console.log('keydown.enter')"
/>
```

You can chain multiple key modifiers together:

```html
<input type="text" :keydown.slash.k="console.log('keydown.slash.k')" />
```

For key values that have multiple words like `BracketLeft`, except for arrow keys, kebab case is used:

```html
<input
  type="text"
  :keydown.bracket-left="console.log('keydown.bracket-left')"
/>
```

The following are the available key modifiers:

| Type                               | Key Value                          | Modifier                       | Usage                                               |
| ---------------------------------- | ---------------------------------- | ------------------------------ | --------------------------------------------------- |
| Digits (0-9)                       | Digit1, Digit2                     | 1, 2                           | :keyup.1, :keyup.2                                  |
| Letters (A-Z, a-z)                 | KeyA, KeyB                         | a, b                           | :keyup.a, :keyup.b                                  |
| Numpad (0-9)                       | Numpad1, Numpad2                   | 1, 2                           | :keyup.1, :keyup.2                                  |
| Arrow Keys (up, down, left, right) | ArrowLeft, ArrowRight              | left, right                    | :keyup.left, :keyup.right                           |
| Meta (left, right)                 | Meta, MetaLeft, MetaRight          | meta, meta-left, meta-right    | :keyup.meta, :keyup.meta-left, :keyup.meta-right    |
| Alt (left, right)                  | Alt, AltLeft, AltRight             | alt, alt-left, alt-right       | :keyup.alt, :keyup.alt-left, :keyup.alt-right       |
| Control (left, right)              | Control, ControlLeft, ControlRight | ctrl, ctrl-left, ctrl-right    | :keyup.ctrl, :keyup.ctrl-left, :keyup.ctrl-right    |
| Shift (left, right)                | Shift, ShiftLeft, ShiftRight       | shift, shift-left, shift-right | :keyup.shift, :keyup.shift-left, :keyup.shift-right |
| Symbols (., /, =, etc.)            | Period, BracketLeft, Slash         | period, bracket-left, slash    | :keyup.period, :keyup.bracket-left, :keyup.slash    |


## Further Enhancements

Ok. We lied when we said mini only does one thing. Writing javascript inside of html attributes can get a bit messy, so we added some helper methods that make working with common things like arrays, that little bit less verbose.

### Array Methods

Here are the custom array methods which are available for you to use:

- `first` - returns the first item in the array.
  Usage: `array.first`

  ```js
  array = ['Cherries', 'Chocolate', 'Blueberry', 'Vanilla']
  array.last // returns 'Vanilla'
  ```

- `last` - returns the last item in the array.
  Usage: `array.last`

  ```js
  array = ['Cherries', 'Chocolate', 'Blueberry', 'Vanilla']
  array.first // returns 'Cherries'
  ```

- `search` - returns an array of items that match the query.
  Usage: `array.search('query')`

  ```js
  array = ['Cherries', 'Chocolate', 'Blueberry', 'Vanilla']
  array.search('c') // returns ['Cherries', 'Chocolate']
  ```

- `toggle`
  Usage: `array.toggle('item')`
- `add` - adds an item to the array if it doesn't exist.
  Usage: `array.add('item')`

  ```js
  array = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4']
  array.add('Tag 5') // returns ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4', 'Tag 5']
  ```

- `remove` - removes an item from the array if it exists.
  Usage: `array.remove('item')`

  ```js
  array = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4']
  array.remove('Tag 2') // returns ['Tag 1', 'Tag 3', 'Tag 4']
  array = array.remove('Tag 2') // Remove an element and force a re-render
  ```

- `nextItem` - gets the next item in the array.
  Usage: `array.nextItem('item')`

  ```js
  array = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4']
  array.nextItem('Tag 2') // returns 'Tag 3'
  ```

- `previousItem` - gets the next item in the array.
  Usage: `array.previousOf('item')`

  ```js
  array = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4']
  array.previousItem('Tag 2') // returns 'Tag 1'
  ```


<br/>

---

<br/>


## Technical Details



### Events

Mini events are based on the browser's native events. Most of the time you'll be using `:click`, `:change`, or `:press`, but the full list is here:

- `:click` - This will trigger when the user clicks on the element.
- `:change` - This will trigger when the user changes the value of a form input.
- `:press` - This will trigger when the user:
  - triggers the `click` event.
  - triggers the `keyup.enter` and `keyup.space` events.
  - triggers the `touchstart` event.
- `:clickout` - This will trigger when the user clicks outside of the current element.
- `:keyup.up` - This will trigger when the user presses the up arrow key.
- `:keyup.down` - This will trigger when the user presses the down arrow key.
- `:keyup.left` - This will trigger when the user presses the left arrow key.
- `:keyup.right` - This will trigger when the user presses the right arrow key.
- `:keyup.enter` - This will trigger when the user presses "Enter".
- `:keyup.space` - This will trigger when the user presses "Space".


### Triggering DOM Updates / Re-renders

A DOM update or a re-render happens when the state variable is re-assigned:

```html
<input type="text" :change="firstName = this.value" />
<!-- the re-assignment of firstName will trigger DOM updates that uses that variable -->
```

<br/>

---


<br/>

