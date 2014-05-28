package com.ooms.model.util;


import java.security.MessageDigest;

public class MDEncode {

	public static String encode(String plainText) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[] = md.digest();
			StringBuffer buf = new StringBuffer("");
			for (int i:b) {
				if (i < 0) i += 256;
				if (i < 16) buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			String res = buf.toString();
			return res;
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
