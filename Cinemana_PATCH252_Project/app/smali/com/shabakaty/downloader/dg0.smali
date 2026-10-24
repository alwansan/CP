.class public final Lcom/shabakaty/downloader/dg0;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponentDeferredProxy.java"

# interfaces
.implements Lcom/shabakaty/downloader/bg0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dg0$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/pw2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/np0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/np0<",
            "Lcom/shabakaty/downloader/bg0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/bg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dg0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dg0$b;-><init>(Lcom/shabakaty/downloader/dg0$a;)V

    sput-object v0, Lcom/shabakaty/downloader/dg0;->c:Lcom/shabakaty/downloader/pw2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/np0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np0<",
            "Lcom/shabakaty/downloader/bg0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/dg0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/dg0;->a:Lcom/shabakaty/downloader/np0;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/dg0;)V

    check-cast p1, Lcom/shabakaty/downloader/h83;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/h83;->a(Lcom/shabakaty/downloader/np0$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dg0;->a:Lcom/shabakaty/downloader/np0;

    new-instance v1, Lcom/shabakaty/downloader/gw3;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/gw3;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lcom/shabakaty/downloader/h83;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/h83;->a(Lcom/shabakaty/downloader/np0$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/shabakaty/downloader/pw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dg0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bg0;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/dg0;->c:Lcom/shabakaty/downloader/pw2;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/bg0;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/pw2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dg0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bg0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/bg0;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/sc4;)V
    .locals 8

    const-string v0, "Deferring native open session: "

    .line 1
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FirebaseCrashlytics"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v2, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dg0;->a:Lcom/shabakaty/downloader/np0;

    new-instance v7, Lcom/shabakaty/downloader/cg0;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/cg0;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/sc4;)V

    check-cast v0, Lcom/shabakaty/downloader/h83;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/h83;->a(Lcom/shabakaty/downloader/np0$a;)V

    return-void
.end method
