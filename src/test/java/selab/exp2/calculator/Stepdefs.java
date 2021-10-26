package selab.exp2.calculator;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.eo.Do;
import io.cucumber.java.sl.In;
import org.junit.Assert;

import javax.print.Doc;

public class Stepdefs {
    private Calculator calculator;

    @Before
    public void setup() {
        this.calculator = new Calculator();
    }

    @Given("Input value of {int}")
    public void inputValueOf(int value) {
        this.calculator.setInput(value);
    }

    @When("I press button {string}")
    public void iPressButtonSqr(String button) {
        this.calculator.clickButton(button);
    }

    @Then("I expect the result {double}")
    public void iExpectTheResult(double result) {
        Assert.assertEquals(result, this.calculator.getResult(), 1e-18);
    }

    @Then("I expect the result to be NaN")
    public void iExpectToBeNaN() {
        Assert.assertTrue(Double.isNaN(this.calculator.getResult()));
    }

    @Then("I expect the result to be Infinity")
    public void iExpectToThrow() {
        Assert.assertTrue(Double.isInfinite(this.calculator.getResult()));
    }


}
