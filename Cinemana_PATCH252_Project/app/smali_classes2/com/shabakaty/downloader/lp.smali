.class public Lcom/shabakaty/downloader/lp;
.super Lcom/shabakaty/downloader/zl4;
.source "CDataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/zl4;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method public u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    const-string p2, "<![CDATA["

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    :try_start_0
    const-string p2, "]]>"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/iv4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/iv4;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
