<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <div class="swiper-container banner-wrapper">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="Banner"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="img">
                <img class="ovh lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="content">
                <xsl:if test="Description != ''">
                    <div class="text">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-viewmore-2" href="">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Tìm hiểu thêm</xsl:text>
                    </a>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>