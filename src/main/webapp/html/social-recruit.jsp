<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/16/016
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-cn">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}"/>
    <script>
        <c:set var="nostring" value=""/>
        <c:if test="${!nostring.equals(requestScope.alert)&&requestScope.alert!=null}">
        alert("${requestScope.alert}")
        </c:if>
    </script>
    <meta charset="UTF-8">
    <title>Search</title>
    <link rel="stylesheet" href="css/recruit.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="bgc-img">
    <div class="banner flex flex-center spacing-around">
        <div class="ban-left flex flex-content">
            <div class="ban-logo">
                <h1>招聘</h1>
                <img src="${base}image/homepage-logo.png">
                <span></span>
            </div>
            <div class="ban-title">
                <ul class="flex flex-content">
                    <li><a href="seeker/home">首页</a></li>
                    <li><a href="html/social-recruit.jsp">社会招聘</a></li>
                    <li class="pull-list">
                        <a href="html/school-recruit.jsp">校园招聘</a>
                        <ul class="pull-list-item">
                            <li><a href="html/jobFairRoute.jsp">校招行程</a></li>
                            <li><a href="html/jobFairFlow.jsp">校招流程</a></li>
                        </ul>
                    </li>
                    <li><a href="html/contact.jsp">联系我们</a></li>
                </ul>
            </div>
        </div>
        <div class="ban-right">
            <ul class="flex flex-content">
                <li><a href="seeker/register">注册</a></li>
                <li><a href="seeker/logon">登录</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="main">
    <div class="left">
        <div class="type">
            <div class="t">职位类型</div>
            <div class="typeList">
                <div class="typeName">互联网IT <span class="toRight">&gt;</span></div>
                <div class="typeName">金融<span class="toRight">&gt;</span></div>
                <div class="typeName">房地产/建筑<span class="toRight">&gt;</span></div>
                <div class="typeName">贸易/零售/物流<span class="toRight">&gt;</span></div>
                <div class="typeName">教育/传媒/广告<span class="toRight">&gt;</span></div>
                <div class="typeName">服务业<span class="toRight">&gt;</span></div>
                <div class="typeName">市场/销售<span class="toRight">&gt;</span></div>
                <div class="typeName">全部职类<span class="toRight">&gt;</span></div>
            </div>
        </div>
        <div class="advertise">
            <img src="" alt="">
            <img src="" alt="">
        </div>
    </div>
    <div class="right">

        <div class="search">
            <div class="searchLine">
                <div class="selectConditionList">
                    <input placeholder="薪资要求" name="salary" type="text" list="conditions1" class="selectCondition">
                    <datalist id="conditions1">
                        <option value="不限"></option>
                        <option value="4K以下"></option>
                        <option value="4K-6K"></option>
                        <option value="6K-8K"></option>
                        <option value="8K-10K"></option>
                        <option value="10K-15K"></option>
                        <option value="15K-25K"></option>
                        <option value="25K-35K"></option>
                        <option value="35K-50K"></option>
                        <option value="50K以上"></option>
                    </datalist>
                    </input>
                    <input type="text" placeholder="学历要求" name="education" list="conditions2" class="selectCondition">
                    <datalist id="conditions2">
                        <option value="不限"></option>
                        <option value="初中及以下"></option>
                        <option value="高中"></option>
                        <option value="中专/中技"></option>
                        <option value="大专"></option>
                        <option value="本科"></option>
                        <option value="硕士"></option>
                        <option value="MBA/EMBA"></option>
                        <option value="博士"></option>
                    </datalist>
                    </input>
                    <input placeholder="工作经验" name="experience" type="text" list="conditions3" class="selectCondition">
                    <datalist id="conditions3">
                        <option value="不限"></option>
                        <option value="无经验"></option>
                        <option value="1年以下"></option>
                        <option value="1-3年"></option>
                        <option value="3-5年"></option>
                        <option value="5-10年"></option>
                        <option value="10年以上"></option>
                    </datalist>
                    </input>
                    <input placeholder="职位类型" name="positionType" type="text" list="conditions4" class="selectCondition">
                    <datalist id="conditions4">
                        <option value="不限"></option>
                        <option value="全职"></option>
                        <option value="兼职/临时"></option>
                        <option value="实习"></option>
                        <option value="校园"></option>
                    </datalist>
                    </input>
                    <input placeholder="公司性质" name="businessNature" type="text" list="conditions5" class="selectCondition">
                    <datalist id="conditions5">
                        <option value="不限"></option>
                        <option value="国企"></option>
                        <option value="外企"></option>
                        <option value="民营"></option>
                        <option value="合资"></option>
                        <option value="上市公司"></option>
                        <option value="股份制企业"></option>
                        <option value="事业单位"></option>
                        <option value="其他"></option>
                    </datalist>
                    </input>
                    <input placeholder="公司规模" name="companyScale" type="text" list="conditions6" class="selectCondition">
                    <datalist id="conditions6">
                        <option value="不限"></option>
                        <option value="20人以下"></option>
                        <option value="20-99人"></option>
                        <option value="100-299人"></option>
                        <option value="300-499人"></option>
                        <option value="500-999人"></option>
                        <option value="1000-9999人"></option>
                        <option value="10000人以上"></option>
                    </datalist>
                    </input>
                    <span id="clear">清空筛选条件</span>


                </div>
                <div class="tip">请输入应聘职位:</div><br>
                <input type="text" list="postList" class="search-frame">
                <datalist id="postList">
                    <option value="Java开发"></option>
                    <option value="UI设计师"></option>
                    <option value="Web前端"></option>
                    <option value="PHP"></option>
                    <option value="Python"></option>
                    <option value="Android"></option>
                    <option value="深度学习"></option>
                    <option value="算法工程师"></option>
                    <option value="电子工程师"></option>
                </datalist>
                </input>
                <button class="icon-butt icon-search"></button>
            </div>
            <div class="hotTopic">
                <div class="title">热门岗位</div>
                <div class="hotList row">
                    <div class="hot col-md-2">投资经理</div>
                    <div class="hot col-md-2">美工</div>
                    <div class="hot col-md-2">UI设计师</div>
                    <div class="hot col-md-2">外贸业务</div>
                    <div class="hot col-md-2">财务顾问</div>
                    <div class="hot col-md-2">行政专员</div>
                    <div class="hot col-md-2">金融产品</div>
                    <div class="hot col-md-2">财产保险</div>
                </div>
            </div>
        </div>
        <div class="detail">
            <table>
                <tr class="first">
                    <th class="col-md-4">职位名称</th>
                    <th class="col-md-4">职位类型</th>
                    <th class="col-md-2">工作地点</th>
                    <th class="col-md-2">发布时间</th>
                </tr>
                <tr>
                    <td  class="col-md-4">薪酬福利专员(J10538)</td>
                    <td  class="col-md-4">职能类（人力资源、财务）</td>
                    <td class="col-md-2">上海市-浦东新区</td>
                    <td class="col-md-2">2016-09-20</td>
                </tr>
                <tr>
                    <td>法务专员(J10534)</td>
                    <td>职能类（人力资源、财务）</td>
                    <td>上海市</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
                <tr>
                    <td>测试工程师(J10533)</td>
                    <td>技术类（php/c++/Androi）</td>
                    <td>上海</td>
                    <td>2016-09-19</td>
                </tr>
            </table>
        </div>
    </div>

</div>
</body>
</html>
