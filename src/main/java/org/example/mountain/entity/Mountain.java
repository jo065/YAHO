package org.example.mountain.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;

@Getter
@Setter
@AllArgsConstructor
public class Mountain {
    private int id;
    private String name;
    private String features;
    private String course;

    public Mountain(Map<String, Object> row) {
            this.id = (int)row.get("id");
            this.name = (String)row.get("name");
            this.features = (String)row.get("features");
            this.course = (String)row.get("course");
    }
}