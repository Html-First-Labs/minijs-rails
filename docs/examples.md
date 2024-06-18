# Examples



## Character Counter

```html
<textarea :change="count = this.value.length"></textarea>
<p class="text-sm text-right" :text="count ? `${count} / 240` : '0 / 240'"></p>
```

<div>
  <label for="message" class="font-semibold">Message</label>
  <textarea
    type="text"
    id="message"
    class="block p-4 w-full border border-gray-200 rounded-lg outline-none focus:border-gray-500"
    rows="2"
    maxlength="240"
    placeholder="Type your message here"
    :change="count = this.value.length"
    id="message"
  ></textarea>
  <p class="text-sm text-right" :text="count ? `${count} / 240` : '0 / 240'"></p>
</div>

## Select All Checkboxes

<div class="flex">
  <input type="checkbox" :change="allChecked=this.checked;console.log(this.checked)">
  <label>
    Select All 
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 1
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 2
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 3
  </label>
</div>


```html
<div class="flex">
  <input type="checkbox" :change="allChecked=this.checked;console.log(this.checked)">
  <label>
    Select All 
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 1
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 2
  </label>
</div>

<div class="flex">
  <input type="checkbox" :checked="allChecked">
  <label>
    Team 3
  </label>
</div>
```
     
              
