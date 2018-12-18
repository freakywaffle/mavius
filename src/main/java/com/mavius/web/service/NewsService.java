	package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.News;
import com.mavius.web.entity.NewsView;

public interface NewsService {
	News getNews(int no);

	List<News> getNewsList();//��ü�˻�
	List<News> getNewsList(int page);//��ü�˻�
	List<News> getNewsList(int page, int cnt);//��ü�˻�
	List<News> getNewsList(String name, int page);//Ư���Խ��� ��������
	List<News> getNewsList(String name, int page, int cnt);//Ư���Խ��� ��������
	List<News> getNewsList(String name, String keyword, int page);//Ư���Խ��� ���͸� ���� �˻�
	List<News> getNewsList(String name, String keyword, int page, int cnt);//Ư���Խ��� ���͸� ���� �˻�
	List<News> getNewsList(String name, String option, String keyword, int page);//Ư���Խ��ǿ��� ���͸��� �˻�
	List<News> getNewsList(String name, String option, String keyword, int page, int cnt);//Ư���Խ��ǿ��� ���͸��� �˻�
	
	NewsView getNewsView(int no);
	int reg(News News);
	int edit(News News);
	int delNews(int no);
	List<NewsView> getViewList();
	List<NewsView> getViewList(int page);
	List<NewsView> getViewList(int page, String option);
	List<NewsView> getViewList(int page, String option, String keyword);
	List<NewsView> getViewList(int page, String option, String keyword, String name); //page(몇페이지 보여줄지), option(검색옵션, 제목이나 내용 제목+내용), name게시판이름
}
