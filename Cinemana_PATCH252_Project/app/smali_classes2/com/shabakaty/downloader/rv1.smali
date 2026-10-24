.class public final Lcom/shabakaty/downloader/rv1;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1$d;

.field public final synthetic f:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;Lcom/shabakaty/downloader/lo3;ZLcom/shabakaty/downloader/q24;Lcom/shabakaty/downloader/ko3;Lcom/shabakaty/downloader/lo3;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/rv1;->e:Lcom/shabakaty/downloader/qv1$d;

    iput-object p6, p0, Lcom/shabakaty/downloader/rv1;->f:Lcom/shabakaty/downloader/lo3;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rv1;->e:Lcom/shabakaty/downloader/qv1$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/qv1;->s:Lcom/shabakaty/downloader/qv1$c;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/rv1;->f:Lcom/shabakaty/downloader/lo3;

    iget-object v2, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/q24;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/qv1$c;->b(Lcom/shabakaty/downloader/qv1;Lcom/shabakaty/downloader/q24;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
