package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Ad;

public interface AdService {
	Ad getAd(int no);
	List<Ad> getAdList();
	int reg(Ad ad);
	int delAd(int no);
}
