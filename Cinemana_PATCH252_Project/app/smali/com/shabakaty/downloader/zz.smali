.class public abstract Lcom/shabakaty/downloader/zz;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$e;


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/yl0;

.field public final c:I

.field public final d:Lcom/shabakaty/downloader/wh1;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field public final i:Lcom/shabakaty/downloader/uc4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/uc4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/uc4;-><init>(Lcom/shabakaty/downloader/vl0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 5
    iput p3, p0, Lcom/shabakaty/downloader/zz;->c:I

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 7
    iput p5, p0, Lcom/shabakaty/downloader/zz;->e:I

    .line 8
    iput-object p6, p0, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    .line 9
    iput-wide p7, p0, Lcom/shabakaty/downloader/zz;->g:J

    .line 10
    iput-wide p9, p0, Lcom/shabakaty/downloader/zz;->h:J

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/hj2;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/zz;->a:J

    return-void
.end method
