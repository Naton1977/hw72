package org.example.domain.entity;

import lombok.*;
@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class Post {
    @NonNull
    private String postAuthor;
    @NonNull
    private String publicationDate;
    @NonNull
    private String postName;
    @NonNull
    private String postTheme;
    @NonNull
    private String postBody;
    @NonNull
    private String draft;

    private int id;


}
