.class public Lcom/shabakaty/downloader/kt1$e;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:J

.field public final B:Z

.field public final r:Ljava/lang/String;

.field public final s:Lcom/shabakaty/downloader/kt1$d;

.field public final t:J

.field public final u:I

.field public final v:J

.field public final w:Lcom/shabakaty/downloader/o01;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLcom/shabakaty/downloader/kt1$a;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/shabakaty/downloader/kt1$e;->t:J

    move v1, p5

    .line 5
    iput v1, v0, Lcom/shabakaty/downloader/kt1$e;->u:I

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/kt1$e;->v:J

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$e;->w:Lcom/shabakaty/downloader/o01;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    move-wide v1, p11

    .line 10
    iput-wide v1, v0, Lcom/shabakaty/downloader/kt1$e;->z:J

    move-wide/from16 v1, p13

    .line 11
    iput-wide v1, v0, Lcom/shabakaty/downloader/kt1$e;->A:J

    move/from16 v1, p15

    .line 12
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kt1$e;->B:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/kt1$e;->v:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/kt1$e;->v:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
