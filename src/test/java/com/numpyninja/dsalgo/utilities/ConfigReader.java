package com.numpyninja.dsalgo.utilities;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

    public class ConfigReader {
        private Properties prop;
        public  String initProp(String key) throws IOException {
            prop=new Properties();
            try {
                FileInputStream file = new FileInputStream(".//src//test//resources//config//config.properties");
                prop.load(file);
            }catch(Exception e){
                e.printStackTrace();
            }
            return prop.getProperty(key);
        }
    }

