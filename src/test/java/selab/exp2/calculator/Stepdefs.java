package selab.exp2.calculator;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Stepdefs {
    private Calculator calculator;

    @Before
    public void setup() {

    }

    @Given("Input value of {double}")
    public void inputValueOf(double value) {
    }

    @When("I press button {string}")
    public void iPressButtonSqr(String button) {
    }

    @Then("I expect the result {double}")
    public void iExpectTheResult(double result) {

    }
}
