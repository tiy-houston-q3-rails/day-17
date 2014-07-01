Day 17 Assignment
------------------

* New rails project
* Create a scaffold, with a class and attributes of your choice
* Include an image and display it
* populate with db:seed

Optional
----

* Implement Twitter Bootstrap and make Table look nice.
* Add a new column via migrations, and add to scaffold (date_tried in the breakfasts example)

To redo your database, and seed files:

```bash
rake db:setup
```
OR

```ruby
Breakfast.destroy_all

Breakfast.create name: :grits
Breakfast.create name: :coffee
Breakfast.create name: :oj
```
