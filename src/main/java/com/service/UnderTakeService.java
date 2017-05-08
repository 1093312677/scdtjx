package com.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.impl.DaoImpl;
import com.entity.UnderImage;
import com.entity.UnderTake;
@Service
public class UnderTakeService {
	@Autowired
	private DaoImpl daoImpl;
	
	/**
	 * 添加工程承接
	 * @param file
	 * @param productModel
	 * @return
	 */
	public boolean addUnderTake (MultipartFile []file, UnderTake underTake, String path){
		List<UnderImage> underImages = new ArrayList<UnderImage>();
		UnderImage underImage = null;
		for(int i=0;i<file.length;i++) {
			String origName = file[i].getOriginalFilename();
			int newNameIndex = origName.lastIndexOf('.');
			if(newNameIndex > 0) {
				String suffix = origName.substring(newNameIndex);
				long name = System.currentTimeMillis();
//					文件随机名称
				String fileName = String.valueOf(name)+(int)(Math.random()*10000)+suffix;
				File file2 = new File(path,fileName);
				underImage = new UnderImage();
				underImage.setImageName(fileName);
				underImage.setUnderTake(underTake);
				underImages.add(underImage);
				try {
					file[i].transferTo(file2);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
		}
		underTake.setUnderImages(underImages);
		if(daoImpl.save(underTake)) {
			return true;
		}
		return false;
	}
	
	/**
	 * view UnderTake
	 * @param productId
	 * @return
	 */
	public List<UnderTake> viewUnderTake() {
		List<UnderTake> underTakes = daoImpl.findAll("UnderTake");
		daoImpl.closeSession();
		return underTakes;
	}
	
	/**
	 * 查看型号详情
	 * @param modelId
	 * @return
	 */
	public List<UnderTake> viewUnderTakeOne(String underId) {
		List<UnderTake> underTakes = daoImpl.findById("UnderTake", underId);
		daoImpl.closeSession();
		return underTakes;
	}
	
	/**
	 * 删除新闻
	 * @param modelId
	 * @return
	 */
	public boolean deleteUnderTake(String underId, String path) {
		List<UnderTake> underTakes = daoImpl.findById("UnderTake", underId);
		daoImpl.closeSession();
		if(underTakes.size() > 0 ) {
			if(daoImpl.delete(underTakes.get(0))) {
				for(int i=0;i<underTakes.get(0).getUnderImages().size();i++) {
					File file = new File(path,underTakes.get(0).getUnderImages().get(i).getImageName() );
					if(file.exists()) {
						file.delete();
					}
				}
				return true;
			}
			return false;
		} else {
			return false;
		}
	}
}
