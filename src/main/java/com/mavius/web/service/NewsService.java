	package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.News;

public interface NewsService {
	News getNews(int no);
	List<News> getNewsList();//전체검색
	List<News> getNewsList(int page);//전체검색
	List<News> getNewsList(int start, int cnt);//전체검색
	List<News> getNewsList(String name, int start);//특정게시판 가져오기
	List<News> getNewsList(String name, int start, int cnt);//특정게시판 가져오기
	List<News> getNewsList(String name, String keyword, int start);//특정게시판 필터링 없이 검색
	List<News> getNewsList(String name, String keyword, int start, int cnt);//특정게시판 필터링 없이 검색
	List<News> getNewsList(String name, String option, String keyword, int start);//특정게시판에서 필터링후 검색
	List<News> getNewsList(String name, String option, String keyword, int start, int cnt);//특정게시판에서 필터링후 검색
	
	int reg(News News);
	int edit(News News);
	int delNews(int no);
}
