<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--
  ~ Copyright 2016 Victor Andreenko
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<custom:generic_2col>

    <jsp:attribute name="title">
        ${post.title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <c:set var="topMenu" value="posts" scope="request"/>
        <%@include file="inc/topMenu.jsp" %>
    </jsp:attribute>

    <jsp:attribute name="sidebar">
    </jsp:attribute>

    <jsp:body>
        <%--page header--%>
        <%@ include file="inc/accountHeaderPage.jsp" %>

        <%--main content--%>
        <article id="post_${post.id}" class="post">
            <%@ include file="inc/postTitle.jsp" %>
            <%@ include file="inc/postMeta.jsp" %>
            <%@ include file="inc/postText.jsp" %>
            <%@ include file="inc/postInfo.jsp" %>
        </article>

        <div class="comments">
            <c:forEach items="${comments}" var="comment">
                <%@include file="inc/comment.jsp" %>
            </c:forEach>
            <%@include file="inc/commentReplyForm.jsp" %>
        </div>
    </jsp:body>

</custom:generic_2col>