package rpo2024.iu3.fclient;

public interface TransactionEvents {
    public String enterPin(int pin, String amount);
    public void transactionResult(boolean result);
}
