package Service;

import Entity.User;
import Mapper.UserMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import jakarta.annotation.Resource;

import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements
        UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }
}
