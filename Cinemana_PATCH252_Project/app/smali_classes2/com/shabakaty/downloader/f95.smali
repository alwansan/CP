.class public Lcom/shabakaty/downloader/f95;
.super Lcom/shabakaty/downloader/zg2;
.source "XmlDeclaration.java"


# instance fields
.field public final v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zg2;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    .line 4
    iput-boolean p2, p0, Lcom/shabakaty/downloader/f95;->v:Z

    return-void
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#declaration"

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
    .locals 12

    const-string p2, "<"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/f95;->v:Z

    const-string v1, "!"

    const-string v2, "?"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->e()Lcom/shabakaty/downloader/he;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 5
    :cond_1
    :goto_1
    iget v4, p2, Lcom/shabakaty/downloader/he;->r:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    .line 6
    iget-object v4, p2, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p2, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 7
    invoke-static {v4}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v4}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    const-string v4, "#declaration"

    .line 10
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x20

    .line 11
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 12
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 13
    invoke-static {v6, v5, p3}, Lcom/shabakaty/downloader/ge;->b(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "=\""

    .line 14
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    move-object v7, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    move-object v8, p3

    .line 15
    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/v31;->b(Ljava/lang/Appendable;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;ZZZ)V

    const/16 v4, 0x22

    .line 16
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 17
    :cond_4
    iget-boolean p2, p0, Lcom/shabakaty/downloader/f95;->v:Z

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    .line 18
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    return-void
.end method
