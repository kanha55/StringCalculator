# String Calculator

The String Calculator is a simple Ruby class that can add a string of comma-separated numbers.

## Features

- The `add` method takes a string of comma-separated numbers and returns their sum.
- An empty string returns 0.
- The method can handle an unknown amount of numbers.
- The method can handle new lines between numbers (instead of commas).
- The method supports different delimiters. To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]".
- Calling `add` with a negative number will throw an exception "negative numbers not allowed <negative_number>". If there are multiple negative numbers, all of them are shown in the exception message, separated by commas.

## Usage

```ruby
calculator = StringCalculator.new
calculator.add('1,2,3') # returns 6
calculator.add('//;\n1;2') # returns 3
calculator.add('1,-2,3,-4') # raises RuntimeError, "negative numbers not allowed: -2, -4"

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of Ruby. If not, you can install it using [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io/).

## Installing String Calculator

To install String Calculator, follow these steps:

1. Clone the repository:

bash
`git clone https://github.com/your-username/string_calculator.git`

2. Navigate to the project directory:

`cd string_calculator`

3.Install the required gems:

`gem install rspec`

Running Tests
To run the test suite, execute the following command:

`rspec spec/string_calculator_spec.rb`
