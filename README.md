# Shinoda

Shinoda calculates the check digit of the corporate number. The check digit calculation method is based on the National Tax Agency's data.

## How to install

Execute below command on shell.

```console
gem install shinoda
```

## Usage

```ruby
require 'shinoda'

Shinoda.check_digit('700110005901') # => 8
Shinoda.corporate_number('700110005901') # => 8700110005901
```
