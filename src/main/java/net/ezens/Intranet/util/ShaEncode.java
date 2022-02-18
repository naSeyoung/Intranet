package net.ezens.Intranet.util;

import java.security.MessageDigest;

public class ShaEncode {
	
	public String encryptSha256(String str) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		byte[] hash = digest.digest(str.getBytes());
		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < hash.length; i++) {
			String hex = Integer.toHexString(0xff & hash[i]);
			if(hex.length() == 1) hexString.append('0');
			hexString.append(hex);
		}

		//출력
		return hexString.toString();
	}
	
	public String encryptSha512(String str) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("SHA-512");
		byte[] hash = digest.digest(str.getBytes());
		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < hash.length; i++) {
			String hex = Integer.toHexString(0xff & hash[i]);
			if(hex.length() == 1) hexString.append('0');
			hexString.append(hex);
		}

		//출력
		return hexString.toString();
	}
	
	public static void main(String[] args) {
		
		String testString = "test";
		
		ShaEncode enc = new ShaEncode();
		
		try {
			System.out.println("256 : " + enc.encryptSha256(testString));
			System.out.println("256 : " + enc.encryptSha256(testString).length());
			System.out.println("512 : " + enc.encryptSha512(testString));
			System.out.println("512 : " + enc.encryptSha512(testString).length());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
