.class public Lcom/shabakaty/downloader/wy4$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/shabakaty/downloader/td0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wy4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/td0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wy4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wy4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wy4$a;->r:Lcom/shabakaty/downloader/wy4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wy4$a;->r:Lcom/shabakaty/downloader/wy4;

    iget-object v0, v0, Lcom/shabakaty/downloader/wy4;->s:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wy4$a;->r:Lcom/shabakaty/downloader/wy4;

    iget-object v0, v0, Lcom/shabakaty/downloader/wy4;->s:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->g()Ljava/lang/Exception;

    move-result-object p1

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
