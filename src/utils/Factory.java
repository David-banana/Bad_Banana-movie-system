package utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class Factory {
	// 读取配置文件的工具
	private static Properties prop = new Properties();

	static {
		try {
			// 加载配置文件
			// 配置文件和Config类在一个包下
			prop.load(new FileInputStream(Factory.class.getResource("bean.properties").getFile()));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获得对象
	 * 
	 * @param className bean.properties中的name
	 * @return 动态创建的对象
	 */
	@SuppressWarnings("rawtypes")
	public static Object getBean(String className) {
		// 获得className对应的真正的类名
		className = prop.getProperty(className);
		try {
			// 加载类,获得对应的字节码对象
			Class clazz = Class.forName(className);
			// 调用类的无参构造器创建对象
			// 要求 - 类有无参构造器
			Object object = clazz.newInstance();
			// 将创建好的对象返回
			return object;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
