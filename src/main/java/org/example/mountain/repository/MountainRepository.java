package org.example.mountain.repository;

import org.example.Container;
import org.example.Main;
import org.example.db.DBConnection;
import org.example.member.entity.Member;
import org.example.mountain.entity.Mountain;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class MountainRepository {
    private DBConnection dbConnection;
    List<Mountain> mountains = new ArrayList<>();

    public MountainRepository(){
        dbConnection = Container.getDBconnection();
    }
    public Mountain findByMountainRepository(String name){

        String sql = "SELECT * FROM `mountain`";
        List<Map<String, Object>> rows = dbConnection.selectRows(sql);

        for (Map<String, Object> row : rows){
            mountains.add(new Mountain(row));
        }

        for (int i = 0; i < mountains.size(); i++) {
            Mountain mountain = mountains.get(i);
            if (mountain.getName().equals(name)) {
                return mountain;
            }
        }
        return null;
    }
}