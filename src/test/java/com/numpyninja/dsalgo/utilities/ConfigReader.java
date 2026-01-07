package com.numpyninja.dsalgo.utilities;

import java.io.FileReader;
import java.util.Properties;

public class ConfigReader {
    private Properties prop;

    public ConfigReader() {
        try {
            prop = new Properties();
            FileReader file = new FileReader(".//src//test//resources//config//config.properties");
            prop.load(file);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public String getProperty(String key){
        return prop.getProperty(key);
    }


}
