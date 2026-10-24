.class public Lcom/shabakaty/downloader/o60;
.super Lcom/shabakaty/downloader/zg2;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zg2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p3, Lcom/shabakaty/downloader/wu0$a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/sz2;->q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V

    :cond_0
    const-string p2, "<!--"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    return-void
.end method
