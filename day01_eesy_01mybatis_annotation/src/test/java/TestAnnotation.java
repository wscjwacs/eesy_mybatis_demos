import com.flyz.dao.IUserDao;
import com.flyz.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestAnnotation {


    @Test
    public void test(){
        try {
            InputStream in = Resources.getResourceAsStream("SqlMapperConfig.xml");
            SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
            SqlSessionFactory factory = builder.build(in);
            SqlSession session = factory.openSession();
            IUserDao userDao = session.getMapper(IUserDao.class);
            List<User> users = userDao.findAll();
            System.out.println(users.toString());


            session.close();
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
