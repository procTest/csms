package com.csms.servlet;

import com.csms.dao.DepotDao;
import com.csms.entity.Depot;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by zhuxiaolei on 2017/6/5.
 */
public class DepotModifyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        int id = Integer.parseInt(req.getParameter("id"));
        DepotDao depotDao = new DepotDao();
        Depot depot = depotDao.getDepotByID(id);

        String depotName = req.getParameter("depot");
        String sup = req.getParameter("supervisor");
        String tel = req.getParameter("tel");
        int capacity = Integer.parseInt(req.getParameter("capacity"));
        depot.setDepot(depotName);
        depot.setSupervisor(sup);
        depot.setTel(tel);
        depot.setCapacity(capacity);
        depotDao.modifyDepotInfo(depot);

        depot = depotDao.getDepotByID(id);

        HttpSession session = req.getSession();
        session.setAttribute("depot",depot);
        resp.sendRedirect("/csms/system/bsd_code_006_1.jsp");
    }
}
