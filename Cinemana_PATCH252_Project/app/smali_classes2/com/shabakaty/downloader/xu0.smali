.class public Lcom/shabakaty/downloader/xu0;
.super Lcom/shabakaty/downloader/zg2;
.source "DocumentType.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zg2;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    const-string p1, "publicId"

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "pubSysKey"

    const-string p2, "PUBLIC"

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    :cond_0
    const-string p1, "systemId"

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    return-void
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method public u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 4

    .line 1
    iget p2, p3, Lcom/shabakaty/downloader/wu0$a;->x:I

    const/4 p3, 0x1

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, p3

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, p3

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    const-string p2, "name"

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, p3

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string p2, "pubSysKey"

    .line 7
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, p3

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, p3

    const/16 v2, 0x22

    const-string v3, " \""

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 11
    :cond_3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, p3

    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p2, 0x3e

    .line 13
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    return-void
.end method
