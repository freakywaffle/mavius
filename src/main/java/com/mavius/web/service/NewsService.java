	package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.News;

public interface NewsService {
	News getNews(int no);
	List<News> getNewsList();//��ü�˻�
	List<News> getNewsList(int page);//��ü�˻�
	List<News> getNewsList(int start, int cnt);//��ü�˻�
	List<News> getNewsList(String name, int start);//Ư���Խ��� ��������
	List<News> getNewsList(String name, int start, int cnt);//Ư���Խ��� ��������
	List<News> getNewsList(String name, String keyword, int start);//Ư���Խ��� ���͸� ���� �˻�
	List<News> getNewsList(String name, String keyword, int start, int cnt);//Ư���Խ��� ���͸� ���� �˻�
	List<News> getNewsList(String name, String option, String keyword, int start);//Ư���Խ��ǿ��� ���͸��� �˻�
	List<News> getNewsList(String name, String option, String keyword, int start, int cnt);//Ư���Խ��ǿ��� ���͸��� �˻�
	
	int reg(News News);
	int edit(News News);
	int delNews(int no);
}
