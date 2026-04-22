package com.dev.jangsan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JangsanController {

	/**
	 * 메인
	 * @return
	 */
	@RequestMapping(value="/")
    public String main() {
        return "main";
    }
	
	/**
	 * 인사말
	 * @return
	 */
	@RequestMapping(value="/hotelinfo01")
    public String hotelinfo01() {
        return "hotelinfo01";
    }
	
	/**
	 * 이용안내
	 * @return
	 */
	@RequestMapping(value="/hotelinfo02")
    public String hotelinfo02() {
        return "hotelinfo02";
    }
	
	/**
	 * 오시는길
	 * @return
	 */
	@RequestMapping(value="/hotelinfo03")
    public String hotelinfo03() {
        return "hotelinfo03";
    }
	
	/**
	 * 스탠다드온돌
	 * @return
	 */
	@RequestMapping(value="/accommodation01")
    public String accommodation01() {
        return "accommodation01";
    }
	
	/**
	 * 스탠다드
	 * @return
	 */
	@RequestMapping(value="/accommodation02")
    public String accommodation02() {
        return "accommodation02";
    }
	
	/**
	 * 스탠다드트윈
	 * @return
	 */
	@RequestMapping(value="/accommodation03")
    public String accommodation03() {
        return "accommodation03";
    }
	
	/**
	 * 디럭스
	 * @return
	 */
	@RequestMapping(value="/accommodation04")
    public String accommodation04() {
        return "accommodation04";
    }
	
	/**
	 * 디럭스패밀리
	 * @return
	 */
	@RequestMapping(value="/accommodation05")
    public String accommodation05() {
        return "accommodation05";
    }
	
	/**
	 * 로얄스위트
	 * @return
	 */
	@RequestMapping(value="/accommodation06")
    public String accommodation06() {
        return "accommodation06";
    }
	
	/**
	 * 로얄패밀리
	 * @return
	 */
	@RequestMapping(value="/accommodation07")
    public String accommodation07() {
        return "accommodation07";
    }
	
	/**
	 * 프리미엄온돌
	 * @return
	 */
	@RequestMapping(value="/accommodation08")
    public String accommodation08() {
        return "accommodation08";
    }
	
	/**
	 * 프리미엄스위트
	 * @return
	 */
	@RequestMapping(value="/accommodation09")
    public String accommodation09() {
        return "accommodation09";
    }
	
	/**
	 * 프리미엄패밀리
	 * @return
	 */
	@RequestMapping(value="/accommodation10")
    public String accommodation10() {
        return "accommodation10";
    }
	
	/**
	 * 한식당
	 * @return
	 */
	@RequestMapping(value="/dining01")
    public String dining01() {
        return "dining01";
    }
	
	/**
	 * 양식당
	 * @return
	 */
	@RequestMapping(value="/dining02")
    public String dining02() {
        return "dining02";
    }
	
	/**
	 * 뷔페(연회장)
	 * @return
	 */
	@RequestMapping(value="/dining03")
    public String dining03() {
        return "dining03";
    }
	
	/**
	 * 커피숍
	 * @return
	 */
//	@RequestMapping(value="/dining04")
//    public String dining04() {
//        return "dining04";
//    }
	
	/**
	 * 워터풀
	 * @return
	 */
	@RequestMapping(value="/facilities01")
    public String facilities01() {
        return "facilities01";
    }
	
	/**
	 * 사우나
	 * @return
	 */
	@RequestMapping(value="/facilities02")
    public String facilities02() {
        return "facilities02";
    }
	
	/**
	 * 웨딩홀(세미나실)
	 * @return
	 */
	@RequestMapping(value="/facilities03")
    public String facilities03() {
        return "facilities03";
    }
	
	/**
	 * 소연회장
	 * @return
	 */
	@RequestMapping(value="/facilities04")
    public String facilities04() {
        return "facilities04";
    }
	
	/**
	 * 바이오포톤세라피실
	 * @return
	 */
	@RequestMapping(value="/facilities05")
    public String facilities05() {
        return "facilities05";
    }
	
	/**
	 * 미용실
	 * @return
	 */
	@RequestMapping(value="/facilities06")
    public String facilities06() {
        return "facilities06";
    }
	
	/**
	 * 베이커리 & 카페
	 * @return
	 */
	@RequestMapping(value="/facilities07")
    public String facilities07() {
        return "facilities07";
    }
	
	/**
	 * 편의점
	 * @return
	 */
	@RequestMapping(value="/facilities08")
    public String facilities08() {
        return "facilities08";
    }
	
	/**
	 * 공용세탁실
	 * @return
	 */
	@RequestMapping(value="/facilities09")
    public String facilities09() {
        return "facilities09";
    }
	
	/**
	 * 캠핑장
	 * @return
	 */
	@RequestMapping(value="/facilities10")
    public String facilities10() {
        return "facilities10";
    }
	
	/**
	 * 강변테라스
	 * @return
	 */
	@RequestMapping(value="/facilities11")
    public String facilities11() {
        return "facilities11";
    }
	
	/**
	 * 분식 & 카페
	 * @return
	 */
	@RequestMapping(value="/facilities12")
    public String facilities12() {
        return "facilities12";
    }
	
	/**
	 * 사이트맵
	 * @return
	 */
	@RequestMapping(value="/sitemap")
    public String sitemap() {
        return "sitemap";
    }
}
