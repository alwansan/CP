.class public final Lcom/shabakaty/downloader/qv1$e;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1;->k(ILcom/shabakaty/downloader/s41;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;

.field public final synthetic f:I

.field public final synthetic g:Lcom/shabakaty/downloader/s41;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILcom/shabakaty/downloader/s41;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/qv1$e;->e:Lcom/shabakaty/downloader/qv1;

    iput p6, p0, Lcom/shabakaty/downloader/qv1$e;->f:I

    iput-object p7, p0, Lcom/shabakaty/downloader/qv1$e;->g:Lcom/shabakaty/downloader/s41;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$e;->e:Lcom/shabakaty/downloader/qv1;

    iget v1, p0, Lcom/shabakaty/downloader/qv1$e;->f:I

    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$e;->g:Lcom/shabakaty/downloader/s41;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "statusCode"

    .line 2
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/aw1;->g(ILcom/shabakaty/downloader/s41;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$e;->e:Lcom/shabakaty/downloader/qv1;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v1, v2, v2, v0}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
