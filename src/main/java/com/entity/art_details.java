package com.entity;

public class art_details {
  private int ArtId;
  private String ArtName;
  private String Artist;
  private String Category;
  private String Price;
  private String Status;
  private String Photo;
  private String email;
public art_details() {
super();
// TODO Auto-generated constructor stub
}
public art_details(String artName, String artist, String category, String price, String status, String photo,
String email) {
super();
ArtName = artName;
Artist = artist;
Category = category;
Price = price;
Status = status;
Photo = photo;
this.email = email;
}
public int getArtId() {
return ArtId;
}
public void setArtId(int artId) {
ArtId = artId;
}
public String getArtName() {
return ArtName;
}
public void setArtName(String artName) {
ArtName = artName;
}
public String getArtist() {
return Artist;
}
public void setArtist(String artist) {
Artist = artist;
}
public String getCategory() {
return Category;
}
public void setCategory(String category) {
Category = category;
}
public String getPrice() {
return Price;
}
public void setPrice(String price) {
Price = price;
}
public String getStatus() {
return Status;
}
public void setStatus(String status) {
Status = status;
}
public String getPhoto() {
return Photo;
}
public void setPhoto(String photo) {
Photo = photo;
}
public String getEmail() {
return email;
}
public void setEmail(String email) {
this.email = email;
}
@Override
public String toString() {
return "art_details [ArtId=" + ArtId + ", ArtName=" + ArtName + ", Artist=" + Artist + ", Category=" + Category
+ ", Price=" + Price + ", Status=" + Status + ", Photo=" + Photo + ", email=" + email + "]";
}
 
 
}