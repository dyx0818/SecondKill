<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@include file="common/head.jsp" %>
    <title>秒杀列表页</title>
</head>
<body>
<%--页面显示部分--%>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>秒杀列表</h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thread>
                    <tr>
                        <th>名称</th>
                        <th>库存</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>创建时间</th>
                        <th>详情页</th>
                    </tr>
                </thread>

                <tbody>
                <c:forEach var="sk" items="${list}">
                    <tr>
                        <td>${sk.name}</td>
                        <td>${sk.number}</td>
                        <td><fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                        <td><fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                        <td><fmt:formatDate value="${sk.createTime}"
                                            pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                        <td><a class="btn btn-info" href="seckill/${sk.seckillId}/detail" target="_blank">详情</a></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>

</div>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>