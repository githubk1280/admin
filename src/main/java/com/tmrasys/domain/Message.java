package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Message {
	private int messageId;
	/**
	 * 为0时表示为admin
	 */
	private int senderId;
	private int receiveId;
	private Date sendTime;
	/**
	 * 已读、未读
	 */
	private int status;
	private int msgTextId;
}
