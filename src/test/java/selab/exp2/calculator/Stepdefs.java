package selab.exp2.calculator;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Stepdefs {
    private Calculator calculator;

    @Before
    public void setup() {
        this.calculator = new Calculator();
    }

    @Given("Input value of {double}")
    public void inputValueOf(double value) {
        this.calculator.setCurrentValue(value);
    }

    @When("I press button {string}")
    public void iPressButtonSqr(String button) {
        this.calculator.clickButton(button);
    }

    @Then("I expect the result {double}")
    public void iExpectTheResult(double result) {
        Assert.assertEquals(result, this.calculator.getCurrentValue(), 1e-18);
    }
}
