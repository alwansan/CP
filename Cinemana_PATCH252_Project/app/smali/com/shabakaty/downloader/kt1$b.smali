.class public final Lcom/shabakaty/downloader/kt1$b;
.super Lcom/shabakaty/downloader/kt1$e;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final C:Z

.field public final D:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZZZ)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    const/16 v16, 0x0

    .line 1
    invoke-direct/range {v0 .. v16}, Lcom/shabakaty/downloader/kt1$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLcom/shabakaty/downloader/kt1$a;)V

    move/from16 v1, p16

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kt1$b;->C:Z

    move/from16 v1, p17

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kt1$b;->D:Z

    return-void
.end method
