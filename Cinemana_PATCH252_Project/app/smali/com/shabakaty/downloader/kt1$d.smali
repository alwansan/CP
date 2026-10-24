.class public final Lcom/shabakaty/downloader/kt1$d;
.super Lcom/shabakaty/downloader/kt1$e;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final C:Ljava/lang/String;

.field public final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 2
    sget-object v18, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    const/4 v3, 0x0

    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 3
    invoke-direct/range {v1 .. v18}, Lcom/shabakaty/downloader/kt1$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;Ljava/lang/String;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;Ljava/lang/String;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/kt1$d;",
            "Ljava/lang/String;",
            "JIJ",
            "Lcom/shabakaty/downloader/o01;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move/from16 v15, p16

    const/16 v16, 0x0

    .line 4
    invoke-direct/range {v0 .. v16}, Lcom/shabakaty/downloader/kt1$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLcom/shabakaty/downloader/kt1$a;)V

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$d;->C:Ljava/lang/String;

    .line 6
    invoke-static/range {p17 .. p17}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    return-void
.end method
