.class public final Lcom/shabakaty/downloader/qv1$f;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1;->o(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;

.field public final synthetic f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;IJ)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/qv1$f;->e:Lcom/shabakaty/downloader/qv1;

    iput p6, p0, Lcom/shabakaty/downloader/qv1$f;->f:I

    iput-wide p7, p0, Lcom/shabakaty/downloader/qv1$f;->g:J

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$f;->e:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/qv1$f;->f:I

    iget-wide v2, p0, Lcom/shabakaty/downloader/qv1$f;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/aw1;->j(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$f;->e:Lcom/shabakaty/downloader/qv1;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v1, v2, v2, v0}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
