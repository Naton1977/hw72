package org.example.domain.entity;

import java.util.List;

public class PostTransfer {
    private int startPosition;
    private int postPosition;
    private int countLines;
    private List<Post> postList;
    private int postOlder;
    private int postNewer;

    public PostTransfer() {

    }

    public PostTransfer(int startPosition, int postPosition, int countLines, List<Post> postList, int postOlder, int postNewer) {
        this.startPosition = startPosition;
        this.postPosition = postPosition;
        this.countLines = countLines;
        this.postList = postList;
        this.postOlder = postOlder;
        this.postNewer = postNewer;
    }

    public int getStartPosition() {
        return startPosition;
    }

    public void setStartPosition(int startPosition) {
        this.startPosition = startPosition;
    }

    public int getPostPosition() {
        return postPosition;
    }

    public void setPostPosition(int postPosition) {
        this.postPosition = postPosition;
    }

    public int getCountLines() {
        return countLines;
    }

    public void setCountLines(int countLines) {
        this.countLines = countLines;
    }

    public List<Post> getPostList() {
        return postList;
    }

    public void setPostList(List<Post> postList) {
        this.postList = postList;
    }

    public int getPostOlder() {
        return postOlder;
    }

    public void setPostOlder(int postOlder) {
        this.postOlder = postOlder;
    }

    public int getPostNewer() {
        return postNewer;
    }

    public void setPostNewer(int postNewer) {
        this.postNewer = postNewer;
    }

    @Override
    public String toString() {
        return "PostTransfer{" +
                "startPosition=" + startPosition +
                ", postPosition=" + postPosition +
                ", countLines=" + countLines +
                ", postList=" + postList +
                ", postOlder=" + postOlder +
                ", postNewer=" + postNewer +
                '}';
    }
}
