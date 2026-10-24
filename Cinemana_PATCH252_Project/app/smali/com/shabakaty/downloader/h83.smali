.class public Lcom/shabakaty/downloader/h83;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/shabakaty/downloader/pj3;
.implements Lcom/shabakaty/downloader/np0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pj3<",
        "TT;>;",
        "Lcom/shabakaty/downloader/np0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/np0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/np0$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/shabakaty/downloader/np0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/np0$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hw3;->x:Lcom/shabakaty/downloader/hw3;

    sput-object v0, Lcom/shabakaty/downloader/h83;->c:Lcom/shabakaty/downloader/np0$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/np0$a;Lcom/shabakaty/downloader/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np0$a<",
            "TT;>;",
            "Lcom/shabakaty/downloader/pj3<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/h83;->a:Lcom/shabakaty/downloader/np0$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/h83;->b:Lcom/shabakaty/downloader/pj3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/np0$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np0$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h83;->b:Lcom/shabakaty/downloader/pj3;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/g83;->a:Lcom/shabakaty/downloader/g83;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/np0$a;->e(Lcom/shabakaty/downloader/pj3;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/h83;->b:Lcom/shabakaty/downloader/pj3;

    if-eq v2, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/h83;->a:Lcom/shabakaty/downloader/np0$a;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/rv;

    invoke-direct {v3, v1, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/np0$a;Lcom/shabakaty/downloader/np0$a;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/h83;->a:Lcom/shabakaty/downloader/np0$a;

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/np0$a;->e(Lcom/shabakaty/downloader/pj3;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h83;->b:Lcom/shabakaty/downloader/pj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
