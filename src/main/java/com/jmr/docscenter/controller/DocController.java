package com.jmr.docscenter.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.jmr.docscenter.auth.CheckLogin;
import com.jmr.docscenter.domain.dto.CommonResponseDTO;
import com.jmr.docscenter.domain.dto.doc.AddDocRequestDTO;
import com.jmr.docscenter.domain.dto.doc.DocDTO;
import com.jmr.docscenter.domain.dto.doc.SearchDocDTO;
import com.jmr.docscenter.domain.dto.user.User;
import com.jmr.docscenter.domain.entity.doc.Doc;
import com.jmr.docscenter.feignclient.UserCenterFeignClient;
import com.jmr.docscenter.service.DocsService;
import com.jmr.docscenter.utils.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/doc")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class DocController {
    private final DocsService docsService;
    private final UserCenterFeignClient userCenterFeignClient;
    private final RedisUtil redisUtil;

    @CheckLogin
    @PostMapping("/add")
    public CommonResponseDTO<Object> addDoc(@RequestBody AddDocRequestDTO addDocRequestDTO) {
        int result = docsService.addDoc(addDocRequestDTO);
        if (result == 1) {
            return CommonResponseDTO.builder().code(200).desc("添加成功").build();
        }
        return CommonResponseDTO.builder().code(500).desc("添加失败").build();
    }

    @CheckLogin
    @PostMapping("/update")
    public CommonResponseDTO<Object> updateDoc(@RequestBody Doc doc) {
        int result = docsService.updateDoc(doc);
        if (result == 1) {
            return CommonResponseDTO.builder().code(200).desc("更新成功").build();
        }
        return CommonResponseDTO.builder().code(500).desc("更新失败").build();
    }

    @CheckLogin
    @PostMapping("/delete/{id}")
    public CommonResponseDTO<Object> deleteDoc(@PathVariable String id) {
        int result = docsService.deleteDoc(id);
        if (result == 1) {
            return CommonResponseDTO.builder().code(200).desc("删除成功").build();
        }
        return CommonResponseDTO.builder().code(500).desc("删除失败").build();
    }

//    @CheckLogin
    @PostMapping("/list")
    public CommonResponseDTO<Map<String, Object>> getDocList(@RequestBody SearchDocDTO searchDocDTO) {
        HashMap<String, Object> data = new HashMap<String, Object>();
        Page<Object> page = PageHelper.startPage(searchDocDTO.getPageNum(), searchDocDTO.getPageSize());
        log.info("查询参数：{}", searchDocDTO);
        List<Doc> list = docsService.getDocList(
                searchDocDTO.getAuthorIds(),
                searchDocDTO.getTeamId(),
                searchDocDTO.getProjectId(),
                searchDocDTO.getTypes(),
                searchDocDTO.getTitle());
        List<DocDTO> resultList = new ArrayList<>();

        for(Doc doc : list) {
            DocDTO docDTO = new DocDTO();
            BeanUtils.copyProperties(doc, docDTO);
            String id = doc.getAuthorId();
            if (redisUtil.hasKey(id) && redisUtil.get(id) != null) {
                docDTO.setAuthorInfo(JSONObject.parseObject((String) redisUtil.get(id), User.class));
            } else {
                CommonResponseDTO<User> userCommonResponseDTO = userCenterFeignClient.getUserById(id);
                docDTO.setAuthorInfo(userCommonResponseDTO.getData());
            }
            resultList.add(docDTO);
        }

        data.put("list", resultList);
        data.put("total", page.getTotal());
        return CommonResponseDTO.<Map<String, Object>>builder().code(200).data(data).desc("success").build();
    }

    @CheckLogin
    @GetMapping("/{id}")
    public CommonResponseDTO<DocDTO> getDocById(@PathVariable String id) {
        Doc doc = docsService.findById(id);
        DocDTO docDTO = new DocDTO();
        BeanUtils.copyProperties(doc, docDTO);
        CommonResponseDTO<User> userCommonResponseDTO = userCenterFeignClient.getUserById(doc.getAuthorId());
        docDTO.setAuthorInfo(userCommonResponseDTO.getData());
        return CommonResponseDTO.<DocDTO>builder().code(200).data(docDTO).desc("success").build();
    }
}
