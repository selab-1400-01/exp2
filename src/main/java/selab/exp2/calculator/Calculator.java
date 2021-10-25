package selab.exp2.calculator;

public class Calculator {
    private int input;

    private double result;

    public void setInput(int input) {
        this.input = input;
    }

    public void clickButton(String name) {
        switch (name) {
            case "sqr":
                this.result = Math.sqrt(this.input);
                break;
            default:
                throw new UnsupportedOperationException(
                    "Operator is not supported: " + name);
        }
    }

    public double getResult() {
        return result;
    }
}
