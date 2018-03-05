package cn.loverqi.match.core.domain;

import java.util.Date;

import cn.loverqi.match.mybaties.pojo.MyBatisPojo;

/**
 * 赛事表
 * @author LoverQi
 * @date 2018年3月5日
 */
public class EventRecord extends MyBatisPojo {
    /** */
    private static final long serialVersionUID = 8194018805357015961L;

    /** 主键id*/
    private Integer id;

    /** 赛事名称*/
    private String name;

    /** 赛制*/
    private String format;

    /** 队伍数量*/
    private Integer teamNumber;

    /** 选手数量*/
    private Integer teamPlayerNumber;

    /** 开始时间*/
    private Date startTime;

    /** 结束时间*/
    private Date endTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format == null ? null : format.trim();
    }

    public Integer getTeamNumber() {
        return teamNumber;
    }

    public void setTeamNumber(Integer teamNumber) {
        this.teamNumber = teamNumber;
    }

    public Integer getTeamPlayerNumber() {
        return teamPlayerNumber;
    }

    public void setTeamPlayerNumber(Integer teamPlayerNumber) {
        this.teamPlayerNumber = teamPlayerNumber;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}