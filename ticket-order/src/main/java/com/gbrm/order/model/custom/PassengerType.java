package com.gbrm.order.model.custom;

public enum PassengerType {
    AULT("成人"),
    CHILD("儿童"),
    DISABLED("残疾人"),
    SOLDIER("军人");

    private String desc;


    PassengerType(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return desc;
    }

    public static void main(String[] args) {
        for (PassengerType p: PassengerType.values()){
            System.out.println(p.name()+","+p.toString());
        }
    }
}
