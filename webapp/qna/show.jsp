<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="ko">
<%@ include file="/include/header.jspf"%>
<body>
<%@ include file="/include/navigation.jspf" %>

    <div class="container" id="main">
            <header class="qna-header">
                <h2 class="qna-title">${question.title}</h2>
            </header>
            <div class="content-main">
                <article class="article">
                    <div class="article-header">
                        <div class="article-header-thumb">
                            <img src="/img/picture.jpeg" class="article-author-thumb" alt="">
                        </div>
                        <div class="article-header-text">
                            <a href="/users/92/kim" class="article-author-name">${question.writer}</a>
                            <a href="/questions/413" class="article-header-time" title="퍼머링크">
                                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${question.createdDate}" />
                                <i class="icon-link"></i>
                            </a>
                        </div>
                    </div>
                    <div class="article-doc">
                        ${question.contents}
                    </div>
                    <div class="article-util">
                        <ul class="article-util-list">

                            <c:if test="${not empty sessionScope.user}">
                                <li>
                                    <a class="link-modify-article" href="/qna/updateForm?questionId=${question.questionId}">수정</a>
                                </li>
                            </c:if>
                            <li>
                                <a class="link-modify-article" href="/qna/delete?questionId=${question.questionId}">삭제</a>
                            </li>
                            <li>
                                <a class="link-modify-article" href="/">목록</a>
                            </li>
                        </ul>
                    </div>
                </article>

  
                <div class="qna-comment">
                    <div class="qna-comment-kuit">
                        <p class="qna-comment-count"><strong>2</strong>개의 의견</p>
                        <div>
                            <article class="article" id="answer-1405">
                                <div class="article-header">
                                    <div class="article-header-thumb">
                                        <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                                    </div>
                                    <div class="article-header-text">
                                        <span class="article-author-name">정경은</span>
                                        <span class="article-header-time">
                                           2023-03-09 23:15
                                        </span>
                                    </div>
                                </div>
                                <div class="article-doc comment-doc">
                                    <p>.</p>
                                </div>
                                <div class="article-util">
                                    <ul class="article-util-list">
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <a class="link-modify-article" href="/qna/1/answers/1/form">수정</a>
                                        </li>
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <form class="delete-answer-form" action="/questions/1/answers/1" method="POST">
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="delete-answer-button">삭제</button>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                            <article class="article" id="answer-1406">
                                <div class="article-header">
                                    <div class="article-header-thumb">
                                        <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                                    </div>
                                    <div class="article-header-text">
                                        <span class="article-author-name">정은아</span>
                                        <span class="article-header-time">
                                          2023-03-09 23:20
                                        </span>
                                    </div>
                                </div>
                                <div class="article-doc comment-doc">
                                    <p>nuclear busy girl</p>
                                </div>
                                <div class="article-util">
                                    <ul class="article-util-list">
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <a class="link-modify-article" href="/questions/1/answers/2/form">수정</a>
                                        </li>
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <form class="form-delete" action="/questions/1/answers/2" method="POST">
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="delete-answer-button">삭제</button>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                            <form class="submit-write">
                                <div class="form-group" style="padding:14px;">
                                    <textarea class="form-control" placeholder="Update your status"></textarea>
                                </div>
                                <button class="btn btn-primary pull-right" type="button">답변하기</button>
                                <div class="clearfix" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
          </div>
      </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
  </body>
</html>