package com.jmr.docscenter.domain.dto.doc;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AddDocRequestDTO {
    private String title;
    private String content;
    private String type;
    private String authorId;
    private String projectId;
    private String teamId;
}
