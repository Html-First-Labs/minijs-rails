# Reference

### Keyboard Events

You can use key modifiers to listen to specific keys. Modifiers are appended to the event name using a dot:

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


---

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
  Usage: `array.previousItem('item')`

  ```js
  array = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4']
  array.previousItem('Tag 2') // returns 'Tag 1'
  ```

---

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
