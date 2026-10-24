.class public final Lcom/shabakaty/downloader/b0$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/b0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b0;Lcom/shabakaty/downloader/pi2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b0<",
            "TV;>;",
            "Lcom/shabakaty/downloader/pi2<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b0$g;->r:Lcom/shabakaty/downloader/b0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b0$g;->s:Lcom/shabakaty/downloader/pi2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b0$g;->r:Lcom/shabakaty/downloader/b0;

    iget-object v0, v0, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b0$g;->s:Lcom/shabakaty/downloader/pi2;

    invoke-static {v0}, Lcom/shabakaty/downloader/b0;->e(Lcom/shabakaty/downloader/pi2;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/b0$g;->r:Lcom/shabakaty/downloader/b0;

    invoke-virtual {v1, v2, p0, v0}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/b0$g;->r:Lcom/shabakaty/downloader/b0;

    invoke-static {v0}, Lcom/shabakaty/downloader/b0;->b(Lcom/shabakaty/downloader/b0;)V

    :cond_1
    return-void
.end method
