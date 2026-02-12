package com.x;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class TestOne {
    public static void main(String[] args) {
        Map<String, Set<String>> g = new HashMap<>();
        String[][] regions = new String[][]{
                {"Earth", "North America", "South America"},
                {"North America", "United States", "Canada"},
                {"United States", "New York", "Boston"},
                {"Canada", "Ontario", "Quebec"},
                {"South America", "Brazil"}
        };
        for (String[] reg : regions) {
            for (int i = 1; i < reg.length; i++) {
                String u = reg[i - 1];
                String v = reg[i];
                g.computeIfAbsent(u, x -> new HashSet<>()).add(v);
            }
        }
    }
}
