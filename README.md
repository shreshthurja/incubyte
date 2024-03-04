# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Description: This is a Ruby on Rails (ROR) project that is specifically made for the task given by Incubytes assesment(https://blog.incubyte.co/blog/tdd-assessment/). It is designed to get the sum of the strings with the given conditions. This README.md file serves as a guide for reviewers and examiners for setting it up for local development.



Things you may want to cover:

* Ruby version: 3.0.0

* Rails Version: 7.1.2

**Installation**:

1. Clone the repository:
   * git clone https://github.com/your-username/your-project.git
   * cd incubyte

2. Install the required gems:
   * bundle install

3. Run the server to run it locally
 * rails start / rails s

**Usage**

1. Run the request on the postman for the web api with end points: 
    http://localhost:3000/add_string_numbers

2. With the web api we need to input the string numbers in the json format like this
    {
    "input": ["1,\n","1", "2", "3", "\n1,2", "1,4,5", "//;\n1;2"]
    }

**Testing**

For achieving the TDD, we need to run the test cases on the terminal with command 
* rspec

**Coverage**

After running the test cases, if we need to find the results of the tests for coverage purposes we need to run
* xdg-open coverage/index.html





