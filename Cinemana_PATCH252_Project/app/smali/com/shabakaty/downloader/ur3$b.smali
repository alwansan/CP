.class public Lcom/shabakaty/downloader/ur3$b;
.super Lcom/shabakaty/downloader/ur3;
.source "Representation.java"

# interfaces
.implements Lcom/shabakaty/downloader/dl0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ur3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final w:Lcom/shabakaty/downloader/b04$a;


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04$a;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/wh1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nk;",
            ">;",
            "Lcom/shabakaty/downloader/b04$a;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/ur3;-><init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04;Ljava/util/List;Lcom/shabakaty/downloader/ur3$a;)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    return-void
.end method


# virtual methods
.method public D(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public G0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b04$a;->i()Z

    move-result v0

    return v0
.end method

.method public I0()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    .line 2
    iget-wide v0, v0, Lcom/shabakaty/downloader/b04$a;->d:J

    return-wide v0
.end method

.method public K(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public O(JJ)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/b04$a;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->c(JJ)J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->b(JJ)J

    move-result-wide p3

    add-long/2addr p3, v1

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/shabakaty/downloader/b04$a;->g(J)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/shabakaty/downloader/b04$a;->e(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iget-wide p3, v0, Lcom/shabakaty/downloader/b04$a;->i:J

    sub-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method public O0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/b04$a;->d(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public P0(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public S(J)Lcom/shabakaty/downloader/qm3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/shabakaty/downloader/b04$a;->h(Lcom/shabakaty/downloader/ur3;J)Lcom/shabakaty/downloader/qm3;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/dl0;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/shabakaty/downloader/qm3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/b04$a;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public u0(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ur3$b;->w:Lcom/shabakaty/downloader/b04$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/b04$a;->f(JJ)J

    move-result-wide p1

    return-wide p1
.end method
