Feature: Assertion with Karate

  Scenario: Matching Example
    * def name = "Steven King"
    * match name == "Steven King"
    # similar to Assert.assertEquals(name,"Steven King)
    * match != "Adam Smith"

    Scenario: More Matching Example
      * def employee =
      """
      {
      "first_name":"Ahmet"
      "salary":"10000,
      "active":"true"
      }
      """
      * print employee
      * def emp_name = employee.firs_name
      * match emp_name == "Ahmet"
      * match employee.salary == 10000

      Scenario: fuzzy matching
        * def employee =
      """
      {
      "first_name":"Ali",
      "age":30,
      "salary":"5000,
      "active":"true"
      }
      """
        * match employee.first_name == "#string"
        * match employee.age == "#number"
        * match employee.salary == "#number"
        * match employee.active == "#boolean"







