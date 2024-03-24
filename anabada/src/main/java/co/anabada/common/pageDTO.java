package co.anabada.common;

import lombok.Data;

@Data
public class pageDTO {
	private int page;
	private int startPage, endPage; // << 11 12 13 14 15 ... 20 >>
	private boolean prev, next;

	public pageDTO(int page, int totalCnt) {
		this.page = page; // 현재 페이지.
		int realEnd = (int) Math.ceil(totalCnt / 5.0); // 실제 마지막 페이지.

		this.endPage = (int) Math.ceil(page / 10.0) * 10;
		this.startPage = this.endPage - 9;

		this.endPage = this.endPage > realEnd ? realEnd : this.endPage;

		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;

	}
}
