package com.jmr.docscenter.domain.entity.doc;

import java.util.Date;
import javax.persistence.*;

import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "doc")
public class Doc {
    @Id
    @Column(name = "pk_id")
    private String pkId;

    private String title;

    private String type;

    @Column(name = "author_id")
    private String authorId;

    @Column(name = "project_id")
    private String projectId;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name = "update_time")
    private Date updateTime;

    @Column(name = "team_id")
    private String teamId;

    private Integer stared;

    private Integer liked;

    private String content;
}