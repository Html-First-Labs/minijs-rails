
<div class="text-center text-3xl font-bold max-w-xl m-auto">
  Mini lets you build awesome stuff without ever leaving your html
</div>

<br/>
---
<br/>

## Learn Mini in 30 Seconds
---
<br/>

### Define Variables

Set the initial state of the variables using vanilla JS:

```html
<script type="text/javascript">
  myClass = "bg-black text-white p-5"
  myName = "Tony"
  myLink = "https://google.com"
</script>
```

### Use your variables in your html

All you need are the three magic attributes: `:class`, `:text`, and `:value`

```html

<div :class="divClass">
  Hi <span :text="firstName" />, here's your url
  <input :value="myLink">
</div>

```

- `:value` Works with the following input types: text, textarea, select, datepicker.
- `:class` Sets the CSS class of any DOM element based on the value of a js variable.
- `:text` Sets the text of any DOM element based on the value of a js variable.


### Make the UI live-update when a user interacts with it

For example, you can...

- Toggle a class when a user clicks on a button. 
- Update the UI when a user fills in a text field or selects a dropdown value.  
- Plus lots more...

```html
<button :click="showDiv = !showDiv" />
<div :class="showDiv ? 'block' : 'hidden'"">
  Content Here
</div>
```



### The "this" keyword

Access the current element in the event via `this`:

```html
<input type="text" :change="firstName = this.value" />
<p :text="firstName"></p>
```


### Variable Scoping

By default, variables are **global**. This means we can access them anywhere in our code.

```html
<script type="text/javascript">
  firstName = "Tony"
</script>

<button :click="console.log(firstName)">Click Me</button>
```

**Using `el`**

Sometimes, we want to **scope** variables to a particular dom element or loop. In this case we use the `el` keyword.
  
```html
<script>
  items = ["Tag 1", "Tag 2", "Tag 3", "Tag 4"]
  selectedItem = null
</script>

<div :each="items">
  <p :text="el"></p>
</div>

```

**Grouping state with `parent`**
Often we want to group together elements which draw from the same state. In that case, we can use the `parent` keyword. To do this, we prefix our variables with `parent.`, and add the `:parent` attribute to the HTML element that holds the top-level state. 

```html

<div id="accordion" :parent>
  <section>
    <button :click="parent.activeSection = 'about'">
      About Us
    </button>
    <div :class="parent.activeSection =='about' ? 'block' : 'hidden'">
      Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
      eirmod.
    </div>
  </section>
  <section>
    <button :click="parent.activeSection = 'team'">
      Team
    </button>
    <div :class="parent.activeSection =='team' ? 'block' : 'hidden'">
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

