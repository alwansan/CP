.class public final Lcom/shabakaty/downloader/b04$b;
.super Lcom/shabakaty/downloader/b04$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b04;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qm3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm3;JJJJLjava/util/List;JLjava/util/List;JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qm3;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b04$d;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qm3;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    .line 1
    invoke-direct/range {v0 .. v16}, Lcom/shabakaty/downloader/b04$a;-><init>(Lcom/shabakaty/downloader/qm3;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p13

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/b04$b;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b04$b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public h(Lcom/shabakaty/downloader/ur3;J)Lcom/shabakaty/downloader/qm3;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b04$b;->j:Ljava/util/List;

    iget-wide v0, p0, Lcom/shabakaty/downloader/b04$a;->d:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qm3;

    return-object p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
