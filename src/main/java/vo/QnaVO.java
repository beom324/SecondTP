package vo;

public class QnaVO {
    private int q_id;
    private String q_title;
    private String q_answer;

    // 생성자
    public QnaVO(int q_id, String q_title, String q_answer) {
        this.q_id = q_id;
        this.q_title = q_title;
        this.q_answer = q_answer;
    }

    // Getter와 Setter 메소드
    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public String getQ_title() {
        return q_title;
    }

    public void setQ_title(String q_title) {
        this.q_title = q_title;
    }

    public String getQ_answer() {
        return q_answer;
    }

    public void setQ_answer(String q_answer) {
        this.q_answer = q_answer;
    }
}
