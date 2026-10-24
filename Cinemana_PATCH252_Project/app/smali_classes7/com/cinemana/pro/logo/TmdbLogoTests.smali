.class public Lcom/cinemana/pro/logo/TmdbLogoTests;
.super Ljava/lang/Object;
.source "TmdbLogoTests.java"


# static fields
.field static ok:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    sput v0, Lcom/cinemana/pro/logo/TmdbLogoTests;->ok:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(ZLjava/lang/String;)V
    .locals 0

    .line 4
    if-eqz p0, :cond_0

    sget p0, Lcom/cinemana/pro/logo/TmdbLogoTests;->ok:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/cinemana/pro/logo/TmdbLogoTests;->ok:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .line 6
    nop

    .line 10
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"en\",\"file_path\":\"/english.png\",\"vote_count\":100},{\"iso_639_1\":\"ar\",\"file_path\":\"/arabic.png\",\"vote_count\":2},{\"iso_639_1\":null,\"file_path\":\"/neutral.png\",\"vote_count\":200}]}"

    const-string v0, "ar"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/arabic.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "Arabic has priority over votes"

    invoke-static {v1, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 11
    const-string v1, "en"

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "/english.png"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v4, "English priority"

    invoke-static {p0, v4}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 12
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"en\",\"file_path\":\"/english.png\"}]}"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v3, "English fallback"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 13
    const-string p0, "{\"logos\":[{\"iso_639_1\":null,\"file_path\":\"/neutral.png\"}]}"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "/neutral.png"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v3, "Untyped fallback"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 14
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"fr\",\"file_path\":\"/french.png\"}]}"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v3, "Reject unrelated language"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 15
    const-string p0, "{\"movie_results\":[{\"id\":1234,\"title\":\"Test\"}],\"tv_results\":[]}"

    const-string v3, "movie"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "1234"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v5, "movie matched by IMDb"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 16
    const-string p0, "{\"movie_results\":[],\"tv_results\":[{\"id\":5678,\"name\":\"Show\"}]}"

    const-string v5, "series"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "5678"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v6, "series matched by IMDb"

    invoke-static {p0, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 17
    const-string p0, "{\"movie_results\":[]}"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v6, "no guess when match missing"

    invoke-static {p0, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 18
    const-string p0, "{\"movie_results\":[{\"adult\":false,\"genre_ids\":[18,36],\"id\":10360,\"title\":\"Hunger\"}],\"tv_results\":[]}"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "10360"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v6, "nested genre_ids must not truncate movie object"

    invoke-static {p0, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 19
    const-string p0, "{\"movie_results\":[],\"tv_results\":[{\"genre_ids\":[18],\"id\":1396,\"name\":\"Breaking Bad\"}]}"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "1396"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v5, "nested genre_ids must not truncate show object"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 20
    const-string p0, "{\"movie_results\":[{\"other\":{\"id\":9},\"id\":1234}]}"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v5, "must ignore nested subobject id"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 21
    const-string p0, "{\"movie_results\":[{\"genre_ids\":[],\"id\":901}]}"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "901"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v5, "empty nested array"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 22
    const-string p0, "{\"movie_results\":[{\"name\":\"title with ] and }\",\"genre_ids\":[1],\"id\":123}]}"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "123"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v5, "quoted delimiters should not break parser"

    invoke-static {p0, v5}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 24
    const-string p0, "0123456789abcdef0123456789abcdef"

    invoke-static {p0}, Lcom/cinemana/pro/logo/TmdbLogo;->validKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "v3 key format"

    invoke-static {v5, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 25
    const-string v5, "eyJfoo.eyJbar.signature"

    invoke-static {v5}, Lcom/cinemana/pro/logo/TmdbLogo;->validKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "bearer format"

    invoke-static {v5, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 26
    invoke-static {v4}, Lcom/cinemana/pro/logo/TmdbLogo;->validKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const-string v4, "http://evil.test/"

    invoke-static {v4}, Lcom/cinemana/pro/logo/TmdbLogo;->validKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v6, "reject unsafe keys"

    invoke-static {v4, v6}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 27
    const-string v4, "tt1234567"

    invoke-static {v4, v3, v0, p0}, Lcom/cinemana/pro/logo/TmdbLogo;->cacheName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_ar_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "locale isolated cache"

    invoke-static {v6, v7}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 28
    invoke-static {v4, v3, v0, p0}, Lcom/cinemana/pro/logo/TmdbLogo;->cacheName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "0123456789abcdef"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v5

    const-string v3, "key not leaked into file name"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 29
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"en\",\"file_path\":\"/vector.svg\",\"vote_count\":7}]}"

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "/vector.png"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v3, "SVG logo rasterized to PNG URL"

    invoke-static {p0, v3}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 30
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"ar\",\"file_path\":\"/arabic.svg\"},{\"iso_639_1\":\"en\",\"file_path\":\"/english.png\"}]}"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "Arabic vector first"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 31
    const-string p0, "{\"logos\":[{\"iso_639_1\":\"en\",\"file_path\":\"/english.svg\"}]}"

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/TmdbLogo;->selectLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/t/p/w500/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "SVG converted using raster image endpoint"

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbLogoTests;->check(ZLjava/lang/String;)V

    .line 32
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cinemana/pro/logo/TmdbLogoTests;->ok:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TMDB integration cases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    return-void
.end method
