package net.ezens.Intranet.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class AESUtil {

	private String encKey;
	private String strIv = "";
	private static String CHARSET = "UTF-8";
	
	private static final Logger logger = LoggerFactory.getLogger(AESUtil.class);
	
	private SecretKeySpec getKeySpec() throws IOException, NoSuchAlgorithmException {
		byte[] bytes = null;
		if(encKey.length() == 16 ) {
			bytes = new byte[16];
		} else if(encKey.length() == 32 ) {
			bytes = new byte[32];
		} else  {
			bytes = new byte[32];
		}
		SecretKeySpec spec = null;
		bytes = encKey.getBytes(CHARSET);
		spec = new SecretKeySpec(bytes, "AES");
		return spec;
	}
	
	public String encryptCBC(String targetStr) throws Exception {
		SecretKeySpec spec;
		Cipher cipher;
		try {
			spec = getKeySpec();
			cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, spec, new IvParameterSpec(strIv.getBytes(CHARSET)));
			
		} catch (NoSuchAlgorithmException | IOException | NoSuchPaddingException e) {
			logger.error(e.getMessage(), e);
			throw new Exception(e);
		}
		
		try {
			byte[] encByte = cipher.doFinal(targetStr.getBytes(CHARSET));
			System.out.println("encByte : " + encByte);
			return new String(Base64.encodeBase64(encByte));
		} catch (IllegalBlockSizeException | BadPaddingException | UnsupportedEncodingException e) {
			logger.error(e.getMessage(), e);
			throw new Exception(e);
		}
		
	}
	
	public String decryptCBC(String targetStr) throws Exception {
		SecretKeySpec spec;
		Cipher cipher;
		try {
			spec = getKeySpec();
			cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, spec, new IvParameterSpec(strIv.getBytes(CHARSET)));
			
		} catch (NoSuchAlgorithmException | IOException | NoSuchPaddingException e) {
			logger.error(e.getMessage(), e);
			throw new Exception(e);
		}
		
		try {
			byte[] encByte = cipher.doFinal(targetStr.getBytes(CHARSET));
			return new String(Base64.encodeBase64(encByte));
		} catch (IllegalBlockSizeException | BadPaddingException | UnsupportedEncodingException e) {
			logger.error(e.getMessage(), e);
			throw new Exception(e);
		}
		
	}
	
	
}
