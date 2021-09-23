package org.demitry.notice.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
/*@NoArgsConstructor
@AllArgsConstructor*/
public class NoticeDto {
    private int id;
    private String title;
    private String writer_id;
    private Date regdate;
    private String hit;
    private String files;
    private String content ;
    private boolean pub;

}
