package com.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.impl.DaoImpl;
import com.entity.ModelImage;
import com.entity.News;
import com.entity.NewsImage;
import com.entity.Product;
import com.entity.ProductModel;
/**
 * 新闻发布的逻辑处理
 * @author kone
 * 2017.4.22
 */
@Service
public class NewsService {
	@Autowired
	private DaoImpl daoImpl;
	
	/**
	 * 添加新闻
	 * @param file
	 * @param productModel
	 * @return
	 */
	public boolean addNews (MultipartFile []file, News news, String path){
		List<NewsImage> newsImages = new ArrayList<NewsImage>();
		NewsImage newsImage = null;
		for(int i=0;i<file.length;i++) {
			String origName = file[i].getOriginalFilename();
			int newNameIndex = origName.lastIndexOf('.');
			if(newNameIndex > 0) {
				String suffix = origName.substring(newNameIndex);
				long name = System.currentTimeMillis();
//					文件随机名称
				String fileName = String.valueOf(name)+(int)(Math.random()*10000)+suffix;
				File file2 = new File(path,fileName);
				if(i == 0) {
					news.setCoverPhoto(fileName);
				} else {
					newsImage = new NewsImage();
					newsImage.setImageName(fileName);
					newsImage.setNews(news);
					newsImages.add(newsImage);
				}
				try {
					file[i].transferTo(file2);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		news.setNewsImages(newsImages);
		if(daoImpl.save(news)) {
			return true;
		}
		return false;
	}
	
	/**
	 * viewNews
	 * @param productId
	 * @return
	 */
	public List<News> viewNews() {
		List<News> news = daoImpl.findAll("News");
		daoImpl.closeSession();
		return news;
	}
	
	/**
	 * 查看型号详情
	 * @param modelId
	 * @return
	 */
	public List<News> viewNewslOne(String newsId) {
		List<News> news = daoImpl.findById("News", newsId);
		daoImpl.closeSession();
		return news;
	}
	
	/**
	 * 删除新闻
	 * @param modelId
	 * @return
	 */
	public boolean deleteNews(String newsId, String path) {
		List<News> news = daoImpl.findById("News", newsId);
		daoImpl.closeSession();
		if(news.size() > 0 ) {
			if(daoImpl.delete(news.get(0))) {
				for(int i=0;i<news.get(0).getNewsImages().size();i++) {
					File file = new File(path,news.get(0).getNewsImages().get(i).getImageName() );
					if(file.exists()) {
						file.delete();
					}
				}
				File file = new File(path,news.get(0).getCoverPhoto());
				if(file.exists()) {
					file.delete();
				}
				return true;
			}
			return false;
		} else {
			return false;
		}
	}
	
}
