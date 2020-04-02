package com.jmr.docscenter.domain.dto.doc;

import com.alibaba.fastjson.JSONObject;
import com.jmr.docscenter.domain.dto.user.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DocDTO {
    private String pkId;

    private String title;

    private String type;

    private String authorId;

    private String projectId;

    private Date createTime;

    private Date updateTime;

    private String teamId;

    private Integer stared;

    private Integer liked;

    private String content;

    private User authorInfo;
}
