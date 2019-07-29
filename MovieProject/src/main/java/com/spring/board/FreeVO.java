package com.spring.board;
/**
* @Class Name : ShareVO.java

* @Description : 나눔게시판 VO
* @Modification Information
* @
* @  수정일     	  수정자                 수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.22     박현민      최초생성
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/

import java.util.Date;

import lombok.Data;

@Data
public class FreeVO {
	
	private int bf_bno;//	BF_BNO
	private int id;//	ID
	private String bf_category;//	BF_CATEGORY
	private String bf_title;//	BF_TITLE
	private Date bf_reg_date;//	BF_REG_DATE
	private Date bf_update_date;//	BF_UPDATE_DATE
	private String bf_source;//	BF_SOURCE
	private String bf_content;//	BF_CONTENT
	private int bf_warn_counter;//	BF_WARN_COUNTER
	private int bf_view_counter;//	BF_VIEW_COUNTER
	private String bf_deleteyn;//	BF_DELETEYN
	private int bf_recommend;//	BF_RECOMMEND
	private int bf_decommend;//	BF_DECOMMEND

}
