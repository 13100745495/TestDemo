package com.zjk.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.zjk.model.Commnent;
import com.zjk.model.Posts;
import com.zjk.pageModel.Page;

@Controller
@RequestMapping(value = "/travel")
public class PostController extends BaseController {

	@RequestMapping("/viewpost")
	public String Findatts(HttpServletRequest request, Map<String, Object> map, Map<String, Object> map1,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			@RequestParam(value = "pageNow", required = false) Integer pageNow) {

		if (pageSize != null) {
			pageSize = pageSize + 0;
		} else {
			pageSize = 5;
		}
		if (pageNow != null) {
			pageNow = pageNow + 0;
		} else {
			pageNow = 1;
		}
		String biaoti = request.getParameter("biaoti");
		String neirong = request.getParameter("neirong");
		Posts posts = new Posts();
		posts.setP_image("322466_79_58_100.jpg");
		posts.setP_publishtime("2019/5/10");
		posts.setP_views(55);
		posts.setP_zan(5);
		posts.setP_title(biaoti);
		posts.setP_info(neirong);
		List<Posts> post = postService.viewpost(pageSize, pageNow);
		post.add(posts);
		List<Commnent> com = postService.findallcom();
		Page page = new Page();
		page.setPageNow(pageNow);
		page.setPageSize(pageSize);
		page.setTotalItemNumber(postService.findallpost().size());
		request.setAttribute("coms", com);
		request.setAttribute("posts", post);
		return "totaljsp/comment/com_index";
	}

	/**
	 * 方法功能说明： @参数： @param id @参数： @return
	 * 
	 * @return String
	 *//*
		 * 
		 * @RequestMapping(value="/findpostbyid", method=RequestMethod.GET) public void
		 * ViewpostByid(HttpServletRequest request,HttpServletResponse response){ String
		 * id = request.getParameter("p_id"); PrintWriter out=null; try {
		 * System.out.println("ssssssssaaa"); out = response.getWriter(); List<Posts>
		 * post=postService.findpByid(Integer.parseInt(id)); List<Commnent>
		 * com=postService.findcomByid(Integer.parseInt(id));
		 * if(post!=null&&post.size()>0){ JSONObject json = new JSONObject();
		 * json.put("pimage", post.get(0).getP_image()); json.put("ptitle",
		 * post.get(0).getP_title()); json.put("pinfo", post.get(0).getP_info());
		 * json.put("cominfo", com.get(0).getCom_info()); json.put("comtime",
		 * com.get(0).getComt_time()); json.put("comuser", com.get(0).getCom_member());
		 * out.print(json); out.flush(); out.close(); } } catch (IOException e) { //
		 * TODO Auto-generated catch block e.printStackTrace(); }
		 * 
		 * }
		 */

	@RequestMapping("/managepost")
	public String managepost(HttpServletRequest request, Map<String, Object> map,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			@RequestParam(value = "pageNow", required = false) Integer pageNow) {

		if (pageSize != null) {
			pageSize = pageSize + 0;
		} else {
			pageSize = 5;
		}
		if (pageNow != null) {
			pageNow = pageNow + 0;
		} else {
			pageNow = 1;
		}
		List<Posts> post = postService.viewpost(pageSize, pageNow);
		Page page = new Page();
		page.setPageNow(pageNow);
		page.setPageSize(pageSize);
		page.setTotalItemNumber(postService.findallpost().size());

		map.put("posts", post);
		return "totaljsp/manage/man_post";
	}

}
