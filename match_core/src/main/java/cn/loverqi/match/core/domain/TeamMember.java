package cn.loverqi.match.core.domain;

import cn.loverqi.match.mybaties.pojo.MyBatisPojo;

/**
 * 队员表
 * @author LoverQi
 * @date 2018年3月5日
 */
public class TeamMember  extends MyBatisPojo {
    /** */
    private static final long serialVersionUID = -4356952623782794405L;

    /** 主键id*/
    private Integer id;

    /** 队伍id*/
    private Integer teamId;

    /** 姓名*/
    private String name;

    /** 得分*/
    private Integer score;

    /** 篮板*/
    private Integer backboard;

    /** 助攻*/
    private Integer assists;

    /** 抢断*/
    private Integer steals;

    /** 犯规*/
    private Integer foul;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getBackboard() {
        return backboard;
    }

    public void setBackboard(Integer backboard) {
        this.backboard = backboard;
    }

    public Integer getAssists() {
        return assists;
    }

    public void setAssists(Integer assists) {
        this.assists = assists;
    }

    public Integer getSteals() {
        return steals;
    }

    public void setSteals(Integer steals) {
        this.steals = steals;
    }

    public Integer getFoul() {
        return foul;
    }

    public void setFoul(Integer foul) {
        this.foul = foul;
    }
}