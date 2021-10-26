package selab.exp2.calculator;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Stepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;

    @Given("Two input values, {int} and {int}")
    public void twoInputValuesAnd(int arg0, int arg1) {
        value1 = arg0;
        value2 = arg1;
    }

    @When("I add the two values")
    public void iAddTheTwoValues() {
        result = calculator.add(value1, value2);
        System.out.println(result);
    }

    @Then("I expect the sum result {int}")
    public void iExpectSumTheResult(int arg0) {
        Assert.assertEquals(arg0, result);
    }

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
