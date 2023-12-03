package com.bryce;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class CounterController {

    @GetMapping("/count")
    public String index(HttpSession session, Model model) {
        // 獲取當前Session的ID
        String sessionId = session.getId();
        // 獲取Session中保存的計數器值，如果不存在則設置為0
        Integer count = (Integer) session.getAttribute("count");
        if (count == null) {
            count = 0;
        }
        // 計數器值加1
        count++;
        // 將計數器值保存到Session中
        session.setAttribute("count", count);
        // 將計數器值和Session ID添加到模型中，用於在視圖中顯示
        model.addAttribute("count", count);
        model.addAttribute("sessionId", sessionId);
        // 返回視圖名稱
        return "count";
    }
}