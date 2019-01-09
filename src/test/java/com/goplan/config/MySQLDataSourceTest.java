package com.goplan.config;

import org.junit.Test;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MySQLDataSourceTest {

    @Test
    public void testDataSource() throws Exception {
        Properties prop = new Properties();
        InputStream input = null;
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        boolean test = false;
        try {
            input = new FileInputStream("src/main/resources/connection.properties");
            // load a properties file
            prop.load(input);
            dataSource.setDriverClassName(prop.getProperty("db.driver"));
            dataSource.setUrl(prop.getProperty("db.url"));
            dataSource.setUsername(prop.getProperty("db.username"));
            dataSource.setPassword(prop.getProperty("db.password"));
            test = !dataSource.getConnection().isClosed();
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {

            if (input != null) {
                try {
                    input.close();
                    dataSource=null;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        assert test;
    }
}