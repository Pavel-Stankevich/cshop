package by.vstu.cshop.model;

public enum SaleStatus {

    FORMING("Формирование списка покупок"),
    CONFIRMATION("Оформлен"),
    SENT("Отправлен"),
    DELIVERED("Доставлен"),
    CANCELED("Отменен");

    private String name;

    SaleStatus(final String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
