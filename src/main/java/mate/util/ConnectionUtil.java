package mate.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    public static final String URL = "jdbc:mysql://remotemysql.com:3306/advGh2QwkX"
            + "?serverTimezone=UTC";
    public static final String USERNAME = "advGh2QwkX";
    public static final String PASSWORD = "BFzU3ZpRVE";
    public static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        return DriverManager.getConnection(URL, dbProperties);
    }
}
