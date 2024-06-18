# Welcome To Mini

Mini lets you add interactivity to your web apps without leaving your HTML.

<div class="bg-indigo-600 text-white rounded p-5 mb-8 leading-relaxed">
  Mini is currently in Alpha. While we don't anticipate any major API changes, there are several known issues, including a relatively large file size (80kb gzipped). We're actively working on improvements and don't expect to release a beta version until 2025.
</div>

## Getting Started

To add Mini to your project, simply save [this file](https://cdn.mini-js.com/mini.js?download=true) to your codebase and load it when your page loads.

```
<script src="/mini.js" ></script>
```

Alternatively you can also load Mini directly from our CDN if you prefer.

```
<script src="https://cdn.mini-js.com/1.0.15.js" ></script>
```

---

## What can Mini do?

Mini is an **extremely easy to use** way to add **UI Behaviour** to your web software. It's not designed to store all of your state — for example it doesn't include routing or authentication — so it works best when paired with a Server-side Rendered approach.

The best way to understand where Mini shines is to see some examples.

### Add classes to elements when clicked

- **Simple Dropdown Menu:** "When a user clicks the button, add some classes to the arrow icon, and the hidden div that holds the menu." 

```
<button :click="showMenu = !showMenu" :clickout="showMenu = false">
  <div :class="showMenu ? 'rotate-180' : '' " ></div>
  Show Menu
</button>
<div :class="showMenu ? 'transform opacity-100 scale-100' : 'transform opacity-0 scale-95 pointer-events-none' "></div>
```

<div class="relative no-format z-10 pb-5">
  <button class="relative inline-flex items-center justify-center gap-2 rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm font-semibold leading-6 text-gray-800 shadow-sm hover:bg-gray-50" type="button" :click="showMenu = !showMenu" :clickout="showMenu = false">
    <span>Show Menu</span>
    <div class="transition duration-100 ease-out" :class="showMenu ? 'rotate-180' : ''">
      <svg class="h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
      </svg>
    </div>
  </button>

  <div class="absolute mt-2 w-fit origin-top rounded-lg border bg-white opacity-0 shadow-md transition duration-100 ease-out overflow-hidden" :class="showMenu ? 'transform opacity-100 scale-100' : 'transform opacity-0 scale-95 pointer-events-none' ">
    <div class="border-b p-2">
      <ul>
        <li>
          <a class="flex items-center rounded-lg p-3 hover:bg-gray-50" href="#">
            <div class="mr-4 rounded-lg bg-sky-500 text-white p-2 shadow">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                <path fill-rule="evenodd" d="M3 6a3 3 0 0 1 3-3h12a3 3 0 0 1 3 3v12a3 3 0 0 1-3 3H6a3 3 0 0 1-3-3V6Zm4.5 7.5a.75.75 0 0 1 .75.75v2.25a.75.75 0 0 1-1.5 0v-2.25a.75.75 0 0 1 .75-.75Zm3.75-1.5a.75.75 0 0 0-1.5 0v4.5a.75.75 0 0 0 1.5 0V12Zm2.25-3a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 1-1.5 0V9.75A.75.75 0 0 1 13.5 9Zm3.75-1.5a.75.75 0 0 0-1.5 0v9a.75.75 0 0 0 1.5 0v-9Z" clip-rule="evenodd" />
              </svg>
            </div>
            <div>
              <div class="font-semibold">Data</div>
              <div class="text-sm font-light text-gray-500">Measure the performance of your content</div>
            </div>
          </a>
        </li>
        <li>
          <a class="flex items-center rounded-lg p-3 hover:bg-gray-50" href="#">
            <div class="mr-4 rounded-lg bg-blue-500 text-white p-2 shadow">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-5 h-5">
                <path d="M11.7 2.805a.75.75 0 0 1 .6 0A60.65 60.65 0 0 1 22.83 8.72a.75.75 0 0 1-.231 1.337 49.948 49.948 0 0 0-9.902 3.912l-.003.002c-.114.06-.227.119-.34.18a.75.75 0 0 1-.707 0A50.88 50.88 0 0 0 7.5 12.173v-.224c0-.131.067-.248.172-.311a54.615 54.615 0 0 1 4.653-2.52.75.75 0 0 0-.65-1.352 56.123 56.123 0 0 0-4.78 2.589 1.858 1.858 0 0 0-.859 1.228 49.803 49.803 0 0 0-4.634-1.527.75.75 0 0 1-.231-1.337A60.653 60.653 0 0 1 11.7 2.805Z" />
                <path d="M13.06 15.473a48.45 48.45 0 0 1 7.666-3.282c.134 1.414.22 2.843.255 4.284a.75.75 0 0 1-.46.711 47.87 47.87 0 0 0-8.105 4.342.75.75 0 0 1-.832 0 47.87 47.87 0 0 0-8.104-4.342.75.75 0 0 1-.461-.71c.035-1.442.121-2.87.255-4.286.921.304 1.83.634 2.726.99v1.27a1.5 1.5 0 0 0-.14 2.508c-.09.38-.222.753-.397 1.11.452.213.901.434 1.346.66a6.727 6.727 0 0 0 .551-1.607 1.5 1.5 0 0 0 .14-2.67v-.645a48.549 48.549 0 0 1 3.44 1.667 2.25 2.25 0 0 0 2.12 0Z" />
                <path d="M4.462 19.462c.42-.419.753-.89 1-1.395.453.214.902.435 1.347.662a6.742 6.742 0 0 1-1.286 1.794.75.75 0 0 1-1.06-1.06Z" />
              </svg>
            </div>
            <div>
              <div class="font-semibold">Academy</div>
              <div class="text-sm font-light text-gray-500">Learn how to grow your business</div>
            </div>
          </a>
        </li>
        <li>
          <a class="flex items-center rounded-lg p-3 hover:bg-gray-50" href="#">
            <div class="mr-4 rounded-lg bg-indigo-500 text-white p-2 shadow">
              <svg class="h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                <path fill-rule="evenodd" d="M18.685 19.097A9.723 9.723 0 0021.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 003.065 7.097A9.716 9.716 0 0012 21.75a9.716 9.716 0 006.685-2.653zm-12.54-1.285A7.486 7.486 0 0112 15a7.486 7.486 0 015.855 2.812A8.224 8.224 0 0112 20.25a8.224 8.224 0 01-5.855-2.438zM15.75 9a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0z" clip-rule="evenodd"></path>
              </svg>
            </div>
            <div>
              <div class="font-semibold">Creators</div>
              <div class="text-sm font-light text-gray-500">Discover new content creators</div>
            </div>
          </a>
        </li>
      </ul>
    </div>

    <div class="p-2 bg-gray-50">
      <a class="flex items-center rounded-lg p-3 hover:bg-gray-100" href="#">
        <div class="mr-4 rounded-lg bg-gray-800 text-white p-2 shadow">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="h-5 w-5">
            <path fill-rule="evenodd" d="M19.449 8.448 16.388 11a4.52 4.52 0 0 1 0 2.002l3.061 2.55a8.275 8.275 0 0 0 0-7.103ZM15.552 19.45 13 16.388a4.52 4.52 0 0 1-2.002 0l-2.55 3.061a8.275 8.275 0 0 0 7.103 0ZM4.55 15.552 7.612 13a4.52 4.52 0 0 1 0-2.002L4.551 8.45a8.275 8.275 0 0 0 0 7.103ZM8.448 4.55 11 7.612a4.52 4.52 0 0 1 2.002 0l2.55-3.061a8.275 8.275 0 0 0-7.103 0Zm8.657-.86a9.776 9.776 0 0 1 1.79 1.415 9.776 9.776 0 0 1 1.414 1.788 9.764 9.764 0 0 1 0 10.211 9.777 9.777 0 0 1-1.415 1.79 9.777 9.777 0 0 1-1.788 1.414 9.764 9.764 0 0 1-10.212 0 9.776 9.776 0 0 1-1.788-1.415 9.776 9.776 0 0 1-1.415-1.788 9.764 9.764 0 0 1 0-10.212 9.774 9.774 0 0 1 1.415-1.788A9.774 9.774 0 0 1 6.894 3.69a9.764 9.764 0 0 1 10.211 0ZM14.121 9.88a2.985 2.985 0 0 0-1.11-.704 3.015 3.015 0 0 0-2.022 0 2.985 2.985 0 0 0-1.11.704c-.326.325-.56.705-.704 1.11a3.015 3.015 0 0 0 0 2.022c.144.405.378.785.704 1.11.325.326.705.56 1.11.704.652.233 1.37.233 2.022 0a2.985 2.985 0 0 0 1.11-.704c.326-.325.56-.705.704-1.11a3.016 3.016 0 0 0 0-2.022 2.985 2.985 0 0 0-.704-1.11Z" clip-rule="evenodd" />
          </svg>
        </div>
        <div>
          <div class="font-semibold">Documentation</div>
          <div class="text-sm font-light text-gray-500">Discover how to use our product</div>
        </div>
      </a>
    </div>
  </div>
</div>


- **Simple Flight Picker:** "When a user clicks the button, add some classes to the hidden flight picker div, and remove them from other divs." 

<script>
  showBookingPassengers = false
  adultNumber = 1
  childNumber = 0
  babyNumber = 0
  returnAlso = false
  returnDate = ""
</script>

<form>
  <div class="relative" >
    <div style="transform-origin: bottom;" :class="showBookingPassengers ? 'scale-1 opacity-1' : 'scale-0 opacity-0' " class="z-20 scale-0 opacity-0 absolute m-auto transition-all bg-white border rounded-lg shadow-xl w-80 lg:w-96 bottom-16 translate-y-8/12">
      <div class="flex flex-col items-center justify-center my-5 space-y-4">
        <div class="grid grid-cols-4 justify-center items-center space-y-0.5 lg:flex-row lg:justify-between lg:w-full lg:px-4 ">
          <div class="col-span-2">
            <h5 class="text-lg font-semibold">Adults</h5>
            <div class="text-sm text-gray-500"> > 11 years</div>
          </div>
          <div class="flex items-center justify-center col-span-2 space-x-2 ">
            <div :click="if (adultNumber > 0 ) { adultNumber = adultNumber - 1} " class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              -
            </div>
            <input type="text" name="adults" :value="adultNumber" class="text-xl text-center text-black border border-gray-300 no-style w-11 h-11 rounded-xl ">
            <div :click="adultNumber++" class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              +
            </div>
          </div>
        </div>
        <div class="grid grid-cols-4 justify-center items-center space-y-0.5 lg:flex-row lg:justify-between lg:w-full lg:px-4 ">
          <div class="col-span-2">
            <h5 class="text-lg font-semibold">Children</h5>
            <div class="text-sm text-gray-500"> 2 to 11 years</div>
          </div>
          <div class="flex items-center justify-center col-span-2 space-x-2 ">
            <div :click="if (childNumber > 0 ) { childNumber = childNumber - 1} " class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              -
            </div>
            <input type="text" name="children" :value="childNumber" class="text-xl text-center text-black border border-gray-300 no-style w-11 h-11 rounded-xl ">
            <div :click="childNumber++" class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              +
            </div>
          </div>
        </div>
        <div class="grid grid-cols-4 justify-center items-center space-y-0.5 lg:flex-row lg:justify-between lg:w-full lg:px-4 ">
          <div class="col-span-2">
            <h5 class="text-lg font-semibold">Babies</h5>
            <div class="text-sm text-gray-500"> 2 years</div>
          </div>
          <div class="flex items-center justify-center col-span-2 space-x-2 ">
            <div :click="if (babyNumber > 0 ) { babyNumber = babyNumber - 1} " class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              -
            </div>
            <input type="text" name="babies" :value="babyNumber" class="text-xl text-center text-black border border-gray-300 no-style w-11 h-11 rounded-xl ">
            <div :click="babyNumber++" class="text-center font-bold cursor-pointer shadow hover:bg-gray-100 w-8 h-8 transition-all rounded-full">
              +
            </div>
          </div>
        </div>
      </div>
      <div class="flex items-center justify-center w-full h-16 rounded-b-lg bg-beta">
        <div class="bg-white px-4 rounded-lg shadow-lg  py-1.5 font-semibold cursor-pointer button-style-1" :click="showBookingPassengers=false">Save</div>
      </div>
    </div>
    <button class="mb-6 relative inline-flex items-center justify-center gap-2 rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm font-semibold leading-6 text-gray-800 shadow-sm hover:bg-gray-50" type="button" :click="showBookingPassengers=!showBookingPassengers" >
      <span>Show Flight Picker</span>
      <div class="transition duration-100 ease-out" :class="showBookingPassengers ? 'rotate-180' : ''">
        <svg class="h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
        </svg>
      </div>
    </button>

  </div>
</form>

---

## Learn Mini (in Three Steps)

<br/>

### 1. Prefix your html attributes with `:` to let them evaluate javascript

For example, for form inputs, use `:value` to set an input's `value`. 

```html
<input type="text" :value="window.navigator.userAgent" />
```
This will display this ⤵

<input type="text" :value="window.navigator.userAgent" class="rounded px-3 py-2 border-2 border-gray-200 w-full" />

- To set an element's `class`, use the `:class` attribute
- To set an element's `style`, use the `:style` attribute
- And so on...


### 2. Use vanilla javascript variables to store state

Variables default to the global namespace, so you can define your data anywhere in your page and use it later.

```html
<script>
  firstName="Michael"
  lastName="Scott"
</script>
<input type="text" :value="firstName + ` ` +lastName" />
```
This will display this ⤵

<script>
  firstName="Michael"
  lastName="Scott"
</script>
<input type="text" :value="firstName + ` ` +lastName" class="rounded px-3 py-2 border-2 border-gray-200 w-full" />

<hr class="my-6" />

### 3. Use events to respond to user interactions.

Mini extends the browser's native events with shorthand attributes like `:click`, `:change`, `:press`, `:clickout` and a few others. For example, you can use the`:click` attribute to respond to elements being clicked

```html
<script>
  firstName="Michael"
  lastName="Scott"
</script>
<button :click="firstName = 'Pamela'" />
<button :click="lastName = 'Halpert'" />
<input type="text" :value="firstName + ` ` +lastName"  />
```

<script>
  firstName="Michael"
  lastName="Scott"
</script>

<div class="flex pb-4 gap-x-2">
  <button :click="firstName = 'Pamela'"  class="bg-gray-100 rounded-full px-3 py-1 hover:bg-gray-200">Update First Name</button>
  <button :click="lastName = 'Halpert'"  class="bg-gray-100 rounded-full px-3 py-1 hover:bg-gray-200">Update Last Name</button>
</div>

<input type="text" :value="firstName + ` ` +lastName" class="rounded px-3 py-2 border-2 border-gray-200 w-full" />

### Combine these patterns 👆 for infinite possibilities

Being able to set state using javascript variables, update state in response to interactions, and mutate the dom depending on the state, unlocks a **lot** of UI patterns. 

---

# More Mini

Now that you've learned the basics, here are a few more tricks you can use.

### Use `:text` to set the inner text of an element

```html
<span :text="`My lucky number is: `+Math.floor(Math.random() * 100) + 1;" />
```

This will display: <span :text="`My lucky number is: `+Math.floor(Math.random() * 100) + 1;" class="font-bold" />


### Use `:change` to monitor form inputs, and `this.value` to get their values


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


### Use `event` to get the current event

You can also access the current event with the `event` keyword.

```html
<button :click="console.log(event)">Click Me</button>
```

<button :click="console.log(event);alert('Open your console to see the event')" class="bg-gray-100 rounded-full px-3 py-1 hover:bg-gray-200">Click Me</button>

---

### Use `:each` to loop through arrays or objects

While we don't recommend storing deep state, we do provide the ability to iterate through and display collections of objects, like so.

```
<script>
  todos = [
    { name: "Clean Dishes",  complete: true },
    { name: "Vacuum Floors", complete: false}
  ]
</script>
<div :each="todo in todos">
  <div :text="todo.name"></div>
</div>
```

---

### Use `:load` to execute code when an element is loaded

Sometimes we want code to be executed as soon as the page, or a specific element on the page, is loaded. 

```html
<div :load="console.log('I was loaded')"></div>
```

<div :load="console.log('I was loaded')"></div>

This is also useful when looping through arrays with `:each`. 




---

## Scoping

We often need to group together elements which draw from the same state. To do this, first we add the `:scope` attribute to the outer HTML element, then we prefix our variables with `scope.`.

```html
<div :scope>
  <button :click="scope.showDropdown = true">First Dropdown</button>
  <div :class="scope.showDropdown ? 'block' : 'hidden'"></div>
</div>
<div :scope>
  <button :click="scope.showDropdown = true">Second Dropdown</button>
  <div :class="scope.showDropdown ? 'block' : 'hidden'"></div>
</div>
```

We can also set the default values within a scoped group when they load. 

```html
<div :scope="showDropdown=true">
  <button :click="scope.showDropdown = true">First Dropdown</button>
  <div :class="scope.showDropdown ? 'block' : 'hidden'"></div>
</div>
```

---

### Use `el.` to scope state to a specific dom element

The benefit of scope is that you can have groups of dom elements that all share state. But sometimes your state only needs to exist on a single element. In this case you can use the `el.` prefix before your variables.

```
<div
  :load="el.bgColor=bg-green-900"
  :class="el.bgColor">
</div>
```

<div :load="el.bgColor=bg-green-900" :class="el.bgColor">
</div>

---

## It's Just Javascript

The basic premise of Mini is to let attributes execute javascript. This means you can do anything javascript can do, including, for example:

**Basic, If Else statements**

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


--- 

## Helpers

Because javascript is quite verbose, putting it inside of our attributes can get unwieldy quickly. So we added some helper methods that make doing common things like setting timeouts and working with arrays, a little more tidy.

### Use `await wait()` instead of `setTimeout()`

```
<button :click="alert('Starting');await wait(3000);alert('Ended')">
</button>
```

<button class="rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm font-semibold text-gray-800 shadow-sm hover:bg-gray-50" :click="countdownStatus='Countdown Started...';alert('Starting');await wait(2000);alert('Ended');countdownStatus='Countdown Ended...'" :text="countdownStatus">Start Countdown</button>

### Use Array helpers to filter and manipulate data 

```html
<script>
  fruits=['Apple','Banana','Pear','Strawberry','Grape','Pineapple']
  filteredFruits = fruits
</script>
<input type="text" :change="filteredFruits = fruits.search(this.value);">
<div :each="fruit in filteredFruits">
  <div :text="fruit"></div>
</div>
```

<script>
  fruits=['Apple','Banana','Pear','Strawberry','Grape','Pineapple']
  filteredFruits = fruits
</script>
   
<form>
  <input placeholder="Type to Search Fruits" type="text" :change="filteredFruits = fruits.search(this.value);">
</form>

<div class="p-5 bg-gray-100 mt-4 mb-4 rounded">
  <div class="font-bold">Results</div>
  <div :each="fruit in filteredFruits">
    <div :text="fruit"></div>
  </div>
</div>

See all the custom methods in the Reference here.

---

## Keyboard Events

For keyboard events, you can listen to them using `:keyup`, `:keydown`, and `:keypress`:

```html
<input type="text" :keyup="console.log(event)" />
```

You can also do cool stuff like chaining keyboard modifiers together. See The Reference for more info. 


---




