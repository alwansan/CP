.class public final Lcom/google/android/exoplayer2/source/dash/c$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zo;->A:Lcom/shabakaty/downloader/a00$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->a:Lcom/shabakaty/downloader/vl0$a;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;I[ILcom/shabakaty/downloader/f81;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;Lcom/shabakaty/downloader/sp4;)Lcom/google/android/exoplayer2/source/dash/a;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kj2;",
            "Lcom/shabakaty/downloader/zk0;",
            "Lcom/shabakaty/downloader/ok;",
            "I[I",
            "Lcom/shabakaty/downloader/f81;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/d$c;",
            "Lcom/shabakaty/downloader/sp4;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->a:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {v2}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object v11

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v11, v1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/c;

    iget v14, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:I

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v12, p8

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;I[ILcom/shabakaty/downloader/f81;ILcom/shabakaty/downloader/vl0;JIZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;)V

    return-object v1
.end method
