Meteor Data Binding
===================

** Really experimental **

Use markup instead of writing custom events for setting Session kev, value pairs.

### `mb-key` ###
To define the Session key

### `mb-value` ###
To define the Session value.

Defaults to
1. The .val() of the element (useful with text inputs)
2) An empty string ''


###Example 1###

In this example, we set up a single toggle with no custom events / helpers.

The `$.Session.get` comes from the [handlebar helpers package](https://github.com/raix/Meteor-handlebar-helpers).

```
{{#if $.Session.get 'edit-interests'}}
<a mb-key="edit-interests"> Confirm edit</a>
{{else}}
<a mb-key="edit-interests" mb-value="true"> Start edit</a>
{{/if}}
```

The `Confirm edit` button sets the `edit-interests` key to `''`.

The `Start edit` button sets the `edit-interests` key to `true`.

### Example 2 ###

```
<input type="text" mb-on="change,keyup" mb-key="nickname" />

The value of the `input` will be stored with the `nickname` Session key on a `change` or `keyup` event.