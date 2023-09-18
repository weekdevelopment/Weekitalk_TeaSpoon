package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.QnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
    @Autowired
    private QnaService qnaService;

    @GetMapping("list.do") //notice/list.do
    public String getQnaList(Model model) throws Exception {
        List<Qna> qnaList = qnaService.qnaList();
        model.addAttribute("qnaList", qnaList);
        return "/qna/qnaList";
    }

    @GetMapping("detail.do")	//board/detail.do?seq=1
    public String getQnaDetail(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        int lev = Integer.parseInt(request.getParameter("lev"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        model.addAttribute("lev",lev);
        return "/qna/qnaDetail";
    }

    @GetMapping("insert.do")
    public String insertForm(HttpServletRequest request, Model model) throws Exception {
        int lev = Integer.parseInt(request.getParameter("lev"));
        model.addAttribute("lev", lev);
        int par = Integer.parseInt(request.getParameter("par"));
        model.addAttribute("par", par);
        return "/qna/qnaInsert";
    }

    @PostMapping("insert.do")
    public String qnaInsert(HttpServletRequest request, Model model) throws Exception {
        Qna dto = new Qna();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setLev(Integer.parseInt(request.getParameter("lev")));
        dto.setPar(Integer.parseInt(request.getParameter("par")));
        dto.setAuthor(request.getParameter("author"));

        qnaService.qnaInsert(dto);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String qnaDelete(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        qnaService.qnaDelete(qno);
        return "redirect:list.do";
    }

    @GetMapping("edit.do")
    public String editForm(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        int lev = Integer.parseInt(request.getParameter("lev"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        model.addAttribute("lev", lev);
        return "/qna/qnaEdit";
    }

    @PostMapping("edit.do")
    public String qnaEdit(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        String author = request.getParameter("author");
        Qna dto = new Qna();
        dto.setQno(qno);
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setAuthor("author");
        qnaService.qnaEdit(dto);
        return "redirect:list.do";
    }
}
