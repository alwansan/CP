.class public final Lcom/shabakaty/downloader/qv1$d$a;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1$d;->e(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/zv1;

.field public final synthetic f:Lcom/shabakaty/downloader/qv1$d;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/zv1;Lcom/shabakaty/downloader/qv1$d;Lcom/shabakaty/downloader/zv1;ILjava/util/List;Z)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/qv1$d$a;->e:Lcom/shabakaty/downloader/zv1;

    iput-object p6, p0, Lcom/shabakaty/downloader/qv1$d$a;->f:Lcom/shabakaty/downloader/qv1$d;

    iput-object p9, p0, Lcom/shabakaty/downloader/qv1$d$a;->g:Ljava/util/List;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d$a;->f:Lcom/shabakaty/downloader/qv1$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->s:Lcom/shabakaty/downloader/qv1$c;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$d$a;->e:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qv1$c;->c(Lcom/shabakaty/downloader/zv1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    const-string v2, "Http2Connection.Listener failure for "

    .line 6
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/qv1$d$a;->f:Lcom/shabakaty/downloader/qv1$d;

    iget-object v3, v3, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/shabakaty/downloader/lc3;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$d$a;->e:Lcom/shabakaty/downloader/zv1;

    sget-object v2, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/zv1;->c(Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
