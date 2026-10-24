.class public final Lcom/shabakaty/downloader/wv1;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/wv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wv1;->e:Lcom/shabakaty/downloader/qv1;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lcom/shabakaty/downloader/qv1;->j(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
