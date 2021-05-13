<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsDetail">
        <section class="detail-page kv-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-12 col-md-12 col-12">
                        <div class="title f-30 f-700 color-text text-uppercase">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="bottom-wrapper">
                            <ul class="social">
                                <li>
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                            <xsl:value-of select="FullUrl" />
                                        </xsl:attribute>
                                        <em class="ri-facebook-fill"></em>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text>https://twitter.com/home?status=</xsl:text>
                                            <xsl:value-of select="FullUrl" />
                                        </xsl:attribute>
                                        <em class="ri-twitter-fill"></em>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="full-content">
                            <div class="img">
                                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
                            </div>
                            <div class="content">
                                <div class="title f-24 fw-700 color-text text-uppercase">THÔNG TIN TUYỂN DỤNG</div>
                                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                            </div>
                        </div>
                        <div class="list-content">
                            <xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
                        </div>
                        <div class="box-apply">
                            <a class="btn btn-view-more">
                                <xsl:attribute name="data-type">
                                    <xsl:text>iframe</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="data-fancybox">
                                    <xsl:text>Form ứng tuyển</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="ApplyUrl" disable-output-escaping="yes" />
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Apply"></xsl:value-of>
                                <xsl:text>ứng tuyển</xsl:text>
                            </a>
                            <span>Hoặc</span>
                            <a class="btn btn-view-more" download="">
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">/Data/Sites/1/media/tuyendung/ANT_Dang ky du tuyen.xlsx</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Tải mẫu thông tin ứng viên</xsl:text>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <div class="recuirement-other">
                            <div class="recuirement-header">
                                <div class="main-title fw-700 text-main text-uppercase">Tuyển dụng khác</div>
                            </div>
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsImages">
        <img class="lazyload">
            <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
        </img>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="item">
            <div class="title f-24 fw-600 text-main text-uppercase">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="recuirement-body">
            <div class="item">
                <a class="title f-18 fw-700 text-black">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                <div class="address">
                    <em class="material-icons">room</em>
                    <div class="text">
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </div>
                </div>
                <div class="desc">
                    <div class="money">
                        <em class="material-icons">attach_money</em>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <time>
                        <em class="material-icons">event_available</em>
                        <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                    </time>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>  