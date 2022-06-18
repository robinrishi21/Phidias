package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.art_details;

public class ArtDAOImp implements Artdao{

private Connection conn;

public ArtDAOImp(Connection conn) {
super();
this.conn = conn;
}


public boolean addart(art_details b) {
boolean f=false;
try {
String sql="insert into art_details(artName,artist,price,Category,status,photo,email) values(?,?,?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1, b.getArtName());
ps.setString(2, b.getArtist());
ps.setString(3, b.getPrice());
ps.setString(4, b.getCategory());
ps.setString(5, b.getStatus());
ps.setString(6, b.getPhoto());
ps.setString(7, b.getEmail());

int i=ps.executeUpdate();

if(i == 1) {
f = true;
}

} catch (Exception e) {
e.printStackTrace();
}


return f;
}

}
