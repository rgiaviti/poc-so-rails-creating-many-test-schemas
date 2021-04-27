# README

This is an example Rails app that I created to demonstrate my problem for a question on Stackoverflow. Link for the question: https://stackoverflow.com/questions/67258165/why-rails-is-creating-many-test-schemas-when-i-am-running-the-tests

## Solution
Open the file `test/test_helper.rb` and change the following line:
```
parallelize(workers: :number_of_processors)
```
To
```
parallelize(workers: 1)
```
The the tests will not run in parallel mode as the available number of processors.