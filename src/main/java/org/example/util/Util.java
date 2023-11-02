package org.example.util;

import java.time.LocalDate;

public class Util {
    public static String regDate() {
        LocalDate now = LocalDate.now();
        return now.toString();
    }
}