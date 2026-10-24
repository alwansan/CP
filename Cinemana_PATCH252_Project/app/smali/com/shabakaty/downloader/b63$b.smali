.class public final Lcom/shabakaty/downloader/b63$b;
.super Ljava/lang/Object;
.source "OkHttpDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/fw1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fw1$f;

.field public final b:Lcom/shabakaty/downloader/mq$a;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/sp4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mq$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b63$b;->b:Lcom/shabakaty/downloader/mq$a;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/fw1$f;

    invoke-direct {p1}, Lcom/shabakaty/downloader/fw1$f;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b63$b;->a:Lcom/shabakaty/downloader/fw1$f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/shabakaty/downloader/fw1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b63$b;->b()Lcom/shabakaty/downloader/b63;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/vl0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b63$b;->b()Lcom/shabakaty/downloader/b63;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/b63;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/b63;

    iget-object v1, p0, Lcom/shabakaty/downloader/b63$b;->b:Lcom/shabakaty/downloader/mq$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/b63$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/b63$b;->a:Lcom/shabakaty/downloader/fw1$f;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/b63;-><init>(Lcom/shabakaty/downloader/mq$a;Ljava/lang/String;Lcom/shabakaty/downloader/qp;Lcom/shabakaty/downloader/fw1$f;Lcom/shabakaty/downloader/ze3;Lcom/shabakaty/downloader/b63$a;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/b63$b;->d:Lcom/shabakaty/downloader/sp4;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/fj;->e(Lcom/shabakaty/downloader/sp4;)V

    :cond_0
    return-object v7
.end method
