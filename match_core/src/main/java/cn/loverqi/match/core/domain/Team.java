package cn.loverqi.match.core.domain;

import cn.loverqi.match.mybaties.pojo.MyBatisPojo;

/**
 * 团队表
 * @author LoverQi
 * @date 2018年3月5日
 */
public class Team  extends MyBatisPojo {
    /** */
    private static final long serialVersionUID = 7566438843875875053L;

    /** 主键id*/
    private Integer id;

    /** 赛事id*/
    private Integer eventRecordId;

    /** 队伍名称*/
    private String name;

    /** 队伍人数*/
    private Integer playerNumber;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEventRecordId() {
        return eventRecordId;
    }

    public void setEventRecordId(Integer eventRecordId) {
        this.eventRecordId = eventRecordId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPlayerNumber() {
        return playerNumber;
    }

    public void setPlayerNumber(Integer playerNumber) {
        this.playerNumber = playerNumber;
    }
    
    /* （非 Javadoc）
     * @see cn.loverqi.match.mybaties.pojo.MyBatisPojo#setKeyProperty(int)
     */
    @Override
    public void setKeyProperty(Integer keyProperty) {
        this.id = keyProperty;
    }
}