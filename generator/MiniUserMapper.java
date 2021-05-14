package generator;

import com/chen/ems/miniProgram/pojo.MiniUser;

public interface MiniUserMapper {
    int deleteByPrimaryKey(String openId);

    int insert(MiniUser record);

    int insertSelective(MiniUser record);

    MiniUser selectByPrimaryKey(String openId);

    int updateByPrimaryKeySelective(MiniUser record);

    int updateByPrimaryKey(MiniUser record);
}