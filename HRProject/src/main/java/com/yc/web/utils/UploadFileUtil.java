package com.yc.web.utils;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

//上传文件的工具类
public class UploadFileUtil {
	
	/**
	 * 
	 * @param <UploadFile>
	 * @param request :http请求
	 * @param files  :要保存的文件
	 * @param picRootName ：图片项目在服务器webapps下的名字  uploadPdfs
	 * @return
	 */
	public static Map<String, UploadFile> uploadFile(HttpServletRequest request,List<MultipartFile> files,
			String picRootName){
		Map<String,UploadFile> map=new HashMap<String,UploadFile>();
		if(files !=null && files.size()>0){
			//request.getSession().getServletContext().getRealPath("/")得到-》  D:\Tomcat\apache-tomcat-7.0.30-windows-x86\apache-tomcat-7.0.30\webapps\Douban-2
			//  webappfile:  D:\Tomcat\apache-tomcat-7.0.30-windows-x86\apache-tomcat-7.0.30\webapps
			File webappfile=new File(request.getSession().getServletContext().getRealPath("/")).getParentFile();
			
			/**
			 * 图片保存的服务器位置 =》  D:\\Tomcat\\apache-tomcat-7.0.30-windows-x86\\apache-tomcat-7.0.30\\webapps\\uploadPdfs
			 * 即新建一个文件：放在D:\Tomcat\apache-tomcat-7.0.30-windows-x86\apache-tomcat-7.0.30\webapps\\uploadPdfs
			 */
			File picFile=new File(webappfile,picRootName);
			//构建图片服务器的url地址        http://localhost:8080/uploadPdfs
			String picBasePath=request.getScheme() +"://"+request.getServerName() +":"+ request.getServerPort()+"/"+picRootName;
			
			for(MultipartFile multipartFile: files){
				try {
					//originalFilename:只是上传之前的文件的名字
					String originalFilename=multipartFile.getOriginalFilename();
					
					if(multipartFile.isEmpty()){
						continue;
					}
					//生成新文件名，与时间相关
					//originalFilename的作用是：为了获取上传文件的文件类型
					String newfilename=getUniqueFileName()+originalFilename.substring(originalFilename.lastIndexOf("."));
					// D:\\Tomcat\\apache-tomcat-7.0.30-windows-x86\\apache-tomcat-7.0.30\\webapps\\uploadPdfs/2017/2/26
					String saveDir=picFile.getAbsolutePath()+getNowDateStr();
					//文件最终存放这这里 =》newFilePath  D:\\Tomcat\\apache-tomcat-7.0.30-windows-x86\\apache-tomcat-7.0.30\\webapps\\uploadPdfs/2017/2/26 xxx.pdf
					String newFilePath=saveDir+newfilename;
					String newFileUrl=picBasePath+getNowDateStr()+newfilename;
					
					File saveDirFile=new File(saveDir);
					//如果磁盘上没有这个目录，那么久创建这个目录
					if(!saveDirFile.exists()){
						saveDirFile.mkdirs();
					}
					
					File imageFile=new File(newFilePath);
					UploadFile uploadFile=new UploadFile();
					uploadFile.contentType=multipartFile.getContentType();
					uploadFile.size=multipartFile.getSize();
					uploadFile.originalFileName=originalFilename;
					uploadFile.newFileName=newfilename;
					uploadFile.newFilePath=newFilePath;
					uploadFile.newFileUrl=newFileUrl;
					
					map.put(originalFilename, uploadFile);
					//把文件存到磁盘上
					multipartFile.transferTo(imageFile);
					
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		}
		return map;
	}

	/**
	 * 如果一个文件夹下面存超过1000个就会影响文件的访问性能，所以上传的文件就要分散存储，这里用年月日作为目录层级，获取当前日期字符串
	 * @return  "2017/2/26/"
	 */
	private static String getNowDateStr(){
		Calendar now=Calendar.getInstance();
		int year=now.get(Calendar.YEAR);
		int month=now.get(Calendar.MONTH)+1;
		int day=now.get(Calendar.DATE);
		return File.separator+year+File.separator+month+File.separator+day+File.separator;
	}
	
	//生成唯一的文件名
	private static String getUniqueFileName(){
		String str=UUID.randomUUID().toString();  // 生成一串数字:d91816fa-eb03-4775-adbc-33fed15a0431
		return str.replace("-", "");
	}
	
	public static class UploadFile{
		String originalFileName;  //原始的文件名字
		String newFileName;    //新文件名
		String newFilePath;   //新文件这服务器的保存路径
		String newFileUrl;    //新文件的访问路径 
		long size;            //文件的大小
		String contentType;   //文件的类型
		public String getOriginalFileName() {
			return originalFileName;
		}
		public void setOriginalFileName(String originalFileName) {
			this.originalFileName = originalFileName;
		}
		public String getNewFileName() {
			return newFileName;
		}
		public void setNewFileName(String newFileName) {
			this.newFileName = newFileName;
		}
		public String getNewFilePath() {
			return newFilePath;
		}
		public void setNewFilePath(String newFilePath) {
			this.newFilePath = newFilePath;
		}
		public String getNewFileUrl() {
			return newFileUrl;
		}
		public void setNewFileUrl(String newFileUrl) {
			this.newFileUrl = newFileUrl;
		}
		public long getSize() {
			return size;
		}
		public void setSize(long size) {
			this.size = size;
		}
		public String getContentType() {
			return contentType;
		}
		public void setContentType(String contentType) {
			this.contentType = contentType;
		}
	}

}
