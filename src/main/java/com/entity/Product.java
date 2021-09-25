package com.entity;

public class Product {
    private Integer id;
    private String type;
    private String name;
    private String version;
    private long price;
    private String img;
    private Long number;
    private String info;

    public Product() {
    }

    public Product(Integer id, String type, String name, String version,
                   long price, String img, Long number, String info) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.version = version;
        this.price = price;
        this.img = img;
        this.number = number;
        this.info = info;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", name='" + name + '\'' +
                ", version='" + version + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                ", number=" + number +
                ", info='" + info + '\'' +
                '}';
    }
}
