package com.whoami.service;

import com.whoami.po.PageBean;

public interface pageService {
	public PageBean getPageBean(int pageSize, int page);
}
