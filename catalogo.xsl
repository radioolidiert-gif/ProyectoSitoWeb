<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <section class="catalogo-seccion">

            <div class="catalogo-titulo">

                <h1>Catálogo Deportivo</h1>

                <p>
                    Conoce algunos de los artículos y disciplinas
                    que forman parte de La Perla del Sur Sport.
                </p>

            </div>

            <div class="catalogo-grid">

                <!-- RECORRER LOS PRODUCTOS DEL XML -->

                <xsl:for-each select="catalogo/producto">

                    <article class="producto">

                        <!-- IMAGEN -->

                        <div class="producto-imagen">

                            <img src="{imagen}"
                                 alt="{nombre}"/>

                        </div>

                        <!-- INFORMACIÓN -->

                        <div class="producto-contenido">

                            <span class="producto-categoria">
                                <xsl:value-of select="categoria"/>
                            </span>

                            <h2>
                                <xsl:value-of select="nombre"/>
                            </h2>

                            <p class="producto-descripcion">
                                <xsl:value-of select="descripcion"/>
                            </p>

                            <p class="producto-marca">
                                Marca:
                                <strong>
                                    <xsl:value-of select="marca"/>
                                </strong>
                            </p>

                            <div class="producto-final">

                                <span class="producto-precio">
                                    RD$ <xsl:value-of select="precio"/>
                                </span>

                                <xsl:choose>

                                    <xsl:when test="disponible='Si'">

                                        <span class="disponible">
                                            Disponible
                                        </span>

                                    </xsl:when>

                                    <xsl:otherwise>

                                        <span class="agotado">
                                            Agotado
                                        </span>

                                    </xsl:otherwise>

                                </xsl:choose>

                            </div>

                        </div>

                    </article>

                </xsl:for-each>

            </div>

        </section>

    </xsl:template>

</xsl:stylesheet>