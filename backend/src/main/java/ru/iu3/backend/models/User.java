package ru.iu3.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import ru.iu3.backend.tools.View;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
@Access(AccessType.FIELD)
public class User {

    public User() { }
    public User(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    @JsonView(View.Req.class)
    public long id;

    @Column(name = "login", nullable = false, unique = true)
    @JsonView(View.Req.class)
    public String login;

    @JsonIgnore
    @Column(name = "password")
    public String password;

    @Column(name = "email", nullable = false, unique = true)
    @JsonView(View.Req.class)
    public String email;

    @JsonIgnore
    @Column(name = "salt")
    public String salt;

    @JsonView(View.Login.class)
    @Column(name = "token")
    public String token;

    @Column(name = "activity")
    @JsonView(View.Req.class)
    public LocalDateTime activity;

    @ManyToMany(mappedBy = "users")
    @JsonView(View.Req.class)
    public Set<Museum> museums = new HashSet<Museum>();


    public void addMuseum(Museum m) {
        this.museums.add(m);
        m.users.add(this);
    }

    public void removeMuseum(Museum m) {
        this.museums.remove(m);
        m.users.remove(this);
    }


}