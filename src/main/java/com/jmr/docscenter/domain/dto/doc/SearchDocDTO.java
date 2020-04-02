package com.jmr.docscenter.domain.dto.doc;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SearchDocDTO {
    private List<String> authorIds;
    private String teamId;
    private String projectId;
    private List<String> types;
    private int pageSize;
    private int pageNum;
    private String title;
}
