package com.cqu.dao;


import java.io.IOException;  
import java.io.Reader;  
import org.apache.ibatis.io.Resources;  
import org.apache.ibatis.session.SqlSessionFactory;  
import org.apache.ibatis.session.SqlSessionFactoryBuilder;  
public class MyBatisUtil {  
 // 每一个MyBatis的应用程序都以一个SqlSessionFactory对象的实例为核心  
 // 使用SqlSessionFactory的最佳实践是在应用运行期间不要重复创建多次,最佳范围是应用范围  
 private final static SqlSessionFactory sqlSessionFactory;  
 static {  
  String resource = "mybatisMapper/configuration.xml";  
  Reader reader = null;  
  try {  
   reader = Resources.getResourceAsReader(resource);  
  } catch (IOException e) {  
   System.out.println(e.getMessage());  
  }  
  // SqlSessionFactory对象的实例可以通过SqlSessionFactoryBuilder对象来获得  
  // SqlSessionFactoryBuilder实例的最佳范围是方法范围（也就是本地方法变量）。  
  sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);  
 }  
 public static SqlSessionFactory getSqlSessionFactory() {  
  return sqlSessionFactory;  
 }  
}  
