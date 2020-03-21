package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import dao.PageCounterDAO;

/**
 * Servlet Filter implementation class CounterFilter
 */
@WebFilter("/CounterFilter")
public class CounterFilter implements Filter {

	private int hitcount;
	
	public int getHitcount() {
        return hitcount;
    }

    public void setHitcount(int hitcount) {
        this.hitcount = hitcount;
    }
	
    /**
     * Default constructor. 
     */
    public CounterFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		hitcount++;
        System.out.println(hitcount);
        new PageCounterDAO().editPageCounter(1, hitcount);
        request.setAttribute("hit", hitcount);
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		hitcount = new PageCounterDAO().takePage(1);
	}

}
