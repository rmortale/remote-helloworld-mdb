package ch.dulce.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class JmsMessage {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  private String body;
  private String jmsId;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getBody() {
    return body;
  }

  public void setBody(String body) {
    this.body = body;
  }

  public String getJmsId() {
    return jmsId;
  }

  public void setJmsId(String jmsId) {
    this.jmsId = jmsId;
  }
}
