package com.tmrasys.enums;

public interface AdminEnum {
	public enum OutSourceTypeEnum {
		EXPERIMENT_OUTSOURCE("实验外包"), DATA_ANALYZE_OUTSOURCE("实验外包");
		private String value;

		OutSourceTypeEnum(String value) {
			this.setValue(value);
		}

		public String getValue() {
			return value;
		}

		public void setValue(String value) {
			this.value = value;
		}
	}
}
