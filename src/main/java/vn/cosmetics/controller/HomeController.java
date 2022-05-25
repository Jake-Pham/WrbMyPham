package vn.cosmetics.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.cosmetics.model.Boardnew;
import vn.cosmetics.model.Catalog;
import vn.cosmetics.model.Product;
import vn.cosmetics.model.Transactions;
import vn.cosmetics.service.BoardnewService;
import vn.cosmetics.service.CategoryService;
import vn.cosmetics.service.ProductService;
import vn.cosmetics.service.TransactionService;
import vn.cosmetics.service.impl.BoardnewServicesImpl;
import vn.cosmetics.service.impl.CategoryServicesImpl;
import vn.cosmetics.service.impl.ProductServiceImpl;
import vn.cosmetics.service.impl.TransactionServicesImpl;

public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductService productService = new ProductServiceImpl();
	BoardnewService boardnewService = new BoardnewServicesImpl();
	DecimalFormat df = new DecimalFormat("#.000");

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Boardnew> boardnewList = boardnewService.getAll();
		req.setAttribute("boardnewlist", boardnewList);

		List<Product> chamsocdamat = productService.getProductById(1);
		req.setAttribute("chamsocdamat", chamsocdamat);

		List<Product> trangdiem = productService.getProductById(2);
		req.setAttribute("trangdiem", trangdiem);

		List<Product> psy_books = productService.getProductById(3);
		req.setAttribute("nuochoa", psy_books);
		
		List<Product>listproduct = productService.getAll();
		
		
		
		List<Catalog> cateList = cateService.getAll();
		
		
		req.setAttribute("catelist", cateList);
	
	
		req.setAttribute("listproduct", listproduct);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}

	/*
	 * public static void main(String[] args) throws Exception { ProductService
	 * productService = new ProductServiceImpl(); List<Product> banchay 
	 * productService.getProductDiscount(); System.out.println(banchay);
	 * 
	 * }
	 */
}
