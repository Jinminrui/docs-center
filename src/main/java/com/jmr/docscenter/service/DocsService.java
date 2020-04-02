package com.jmr.docscenter.service;

import com.jmr.docscenter.dao.doc.DocMapper;
import com.jmr.docscenter.domain.dto.doc.AddDocRequestDTO;
import com.jmr.docscenter.domain.entity.doc.Doc;
import com.jmr.docscenter.utils.UUIDOperator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class DocsService {
    private final DocMapper docMapper;
    private final UUIDOperator uuidOperator;

    public Doc findById(String id) {
        return docMapper.selectByPrimaryKey(id);
    }

    public int addDoc(AddDocRequestDTO addDocRequestDTO) {
        Doc doc = Doc.builder()
                .pkId(uuidOperator.getUUid())
                .title(addDocRequestDTO.getTitle())
                .content(addDocRequestDTO.getContent())
                .type(addDocRequestDTO.getType())
                .authorId(addDocRequestDTO.getAuthorId())
                .projectId(addDocRequestDTO.getProjectId())
                .teamId(addDocRequestDTO.getTeamId())
                .createTime(new Date())
                .updateTime(new Date())
                .build();
        return docMapper.insertSelective(doc);
    }

    public int updateDoc(Doc doc) {
        return docMapper.updateByPrimaryKeySelective(doc);
    }

    public int deleteDoc(String id) {
        return docMapper.deleteByPrimaryKey(id);
    }

    public List<Doc> getDocList(List<String> authorIds, String teamId, String projectId, List<String> types, String title) {
        Example example = new Example(Doc.class);
        Example.Criteria criteria = example.createCriteria();
        if (authorIds != null && authorIds.size() != 0) {
            criteria.andIn("authorId", authorIds);
        }
        if (teamId != null) {
            criteria.andEqualTo("teamId", teamId);
        }
        if (projectId != null) {
            criteria.andEqualTo("projectId", projectId);
        }
        if (types != null && types.size() != 0) {
           criteria.andIn("type", types);
        }
        if(title != null) {
            criteria.andLike("title", title);
        }
        example.setOrderByClause("update_time desc");
        return docMapper.selectByExample(example);
    }
}
