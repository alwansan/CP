.class public final Lcom/cinemana/pro/logo/FallbackTests;
.super Ljava/lang/Object;
.source "FallbackTests.java"


# static fields
.field static n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 6
    nop

    .line 7
    const/4 p0, 0x1

    const-string v0, "https://static.example.org/logo.png"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/LogoFeature;->artworkSource(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmdb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "valid TMDB logo has priority"

    invoke-static {v1, v2}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 8
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->artworkSource(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cinemeta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "TMDB no logo enables fallback"

    invoke-static {v2, v4}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 9
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/cinemana/pro/logo/LogoFeature;->artworkSource(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "without API key Cinemeta remains default"

    invoke-static {v2, v4}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 10
    const-string v2, "http://bad.example/logo.png"

    invoke-static {p0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->artworkSource(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "invalid TMDB URL falls back safely"

    invoke-static {p0, v2}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 11
    nop

    .line 12
    const-string p0, "{\"meta\":{\"id\":\"tt0123456\",\"logo\":\"https://static.example.org/logo.png\"}}"

    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->parseCinemetaLogo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "parse the fallback logo in meta"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 13
    const-string p0, "{\"meta\":{\"id\":\"tt0123456\"}}"

    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->parseCinemetaLogo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "missing image stays empty"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 14
    const-string p0, "{\"meta\":{\"logo\":\"http://bad.example/logo.png\"}}"

    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->parseCinemetaLogo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "fallback URL must be HTTPS"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/FallbackTests;->ok(ZLjava/lang/String;)V

    .line 15
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cinemana/pro/logo/FallbackTests;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fallback cases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method static ok(ZLjava/lang/String;)V
    .locals 0

    .line 4
    if-eqz p0, :cond_0

    sget p0, Lcom/cinemana/pro/logo/FallbackTests;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/cinemana/pro/logo/FallbackTests;->n:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
