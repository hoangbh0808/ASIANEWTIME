<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="main-title text-center color-title text-uppercase">
            <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
        </div>
        <div class="row">
            <xsl:apply-templates select="Zone/Zone/Zone" mode="LV1"></xsl:apply-templates>
            <div class="tab-button">
                <a class="btn btn-view-more" href="">
                    <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">/du-an/dang-trien-khai</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LV1">
        <div class="col-lg-4 col-md-6">
            <div class="project-item">
                <a class="item-link" href="">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="item-img">
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                        <div class="img-hover"></div>
                    </div>
                    <div class="item-desc">
                        <div class="text f-20 text-uppercase text-center">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>