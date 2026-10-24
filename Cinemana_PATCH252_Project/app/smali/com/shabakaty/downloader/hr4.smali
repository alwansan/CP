.class public final Lcom/shabakaty/downloader/hr4;
.super Lcom/shabakaty/downloader/dm;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hr4$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qn4;JJII)V
    .locals 16

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/dm$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/dm$b;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/hr4$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v2, v3, v0, v4}, Lcom/shabakaty/downloader/hr4$a;-><init>(ILcom/shabakaty/downloader/qn4;I)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/dm;-><init>(Lcom/shabakaty/downloader/dm$d;Lcom/shabakaty/downloader/dm$f;JJJJJJI)V

    return-void
.end method
