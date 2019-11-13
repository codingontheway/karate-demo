package com.karate.demo;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testCategories() {
        return new Karate().feature("Category").relativeTo(getClass());
    }
}
